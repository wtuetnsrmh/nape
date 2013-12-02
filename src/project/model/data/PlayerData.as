package project.model.data
{
	/*
	 * 描述：用户数据模型
	 *
	 */
	import __AS3__.vec.*;
	import project.config.ErrorZhCn;
	import project.config.ItemConfig;
	import project.config.LocalConfig;
	import project.controller.NewBieControler;
	import project.debug.Debug;
	import project.events.SMZTDataChangeEvent;
	import project.model.item.CardModel;
	import project.model.newBie.NewBieModelId;
	import project.view.module.cell.Card;
	import project.view.module.DeckPane.CreaCardGroupPane;
	import project.view.module.helppane.NewbiePane;
	/*import project.config.*;
	   import project.controller.*;
	   import project.core.*;
	   import project.events.*;
	 import project.model.*;*/
	import project.model.item.ItemModel;
	import project.utils.*;
	import flash.events.*;
	import flash.utils.*;
	import mx.utils.*;
	
	public class PlayerData extends DataModel
	{
		//====================================================
		/*id	Integer	玩家唯一编号
		   snsid	String	社交网站唯一编号
		   name	String	玩家名字
		   lv	Byte	等级
		   exp	Integer	经验值
		   gold	Integer	金币数
		   crystal	Integer	水晶数
		   vip	Byte	会员等级    0:普通用户 大于0时显示VIP
		   head String 头像
		   honor int 荣誉
		   title	int	玩家称号编号
		 */
		
		//====================================================
		private var _expGain:int; //当前经验值  --exp
		private var _level:int; //用户当前等级  --lv
		private var _avatar:String; //用户头像地址  --head
		private var _gold:int; //金币  --gold
		private var _crystal:int; //水晶   --crystal
		private var _honor:int; //荣誉  --honor
		private var _nick:String; //玩家名字 --name
		private var _vipLevel:int = 0; //VIP等级  0:普通用户 大于0时显示VIP_ownVip=true;
		private var _snsName:String = ""; //社交网站唯一编号 --snsid
		private var _userId:int; //玩家唯一编号  --id
		private var _title:int;//	玩家称号编号
		
		private var _cardsNum:int; //卡牌数
		private var _expRec:int; //下次升级需要的经验值
		private var _expRatio:int; //进度条宽度
		private var _expStr:String; //显示的进度值
		
		private var _ownVip:Boolean = false; //是否是VIP
		private var _newbieStep:int;
		
		private var _HeroCards:Vector.<CardModel>; //所有的英雄卡
		private var _SoldierCards:Vector.<CardModel>; //所有的佣兵卡
		private var _TalismanCards:Vector.<CardModel>; //所有的法宝
		private var _MitacCards:Vector.<CardModel>; //所有的神通
		
		private var _canUseCards:Vector.<CardModel>; //可以用的卡牌（长度为全部卡牌的长度，只是不能用的卡牌数量为0）
		private var _cards:Vector.<CardModel>; //拥有的所有卡牌数量字典（包括已用的即在已有的卡组中的卡牌）
		private var _decks:Vector.<DeckModel>; //拥有的卡组
		private var _validDecksNum:int;//已经组建的卡组数
		
		private var _newbieItem:int = 0; //新手进度
		//private var _isVip:int = 0;
		//private var _playerLevel:String;
		
		
		private static var playerData:PlayerData;
		public static const PLAYER_INFO:int = 0;
		
		public function PlayerData()
		{
			if (playerData != null)
			{
				throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
			_cards = new Vector.<CardModel>();
			_decks = new Vector.<DeckModel>();
			_canUseCards = new Vector.<CardModel>();
			_MitacCards = new Vector.<CardModel>();
			_TalismanCards = new Vector.<CardModel>();
			_SoldierCards = new Vector.<CardModel>();
			_HeroCards = new Vector.<CardModel>();
			
			return;
		} // end function
		
		//====================================================
		public function refreshSelfData(param:User):void
		{
			_expGain = param.expGain;
			_level = param.level;
			_avatar = param.avatar;
			_gold = param.gold;
			_crystal = param.crystal;
			_honor = param.honor;
			_nick = param.nick;
			_vipLevel = param.vipLevel;
			_snsName = param.snsName;
			_userId = param.userId;
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		
		/**
		 * 设置玩家信息
		 * @param	param
		 */
		public function setPlayerData(param:Object):void
		{
			//Debug.log("playdata");
			
			var userObj:Object = new Object();
			userObj = param["user"];
			_expGain = (userObj["exp"] == null) ? 0 : userObj["exp"];
			_level = (userObj["lv"] == null) ? 0 : userObj["lv"];
			_avatar = (userObj["head"] == null) ? "" : userObj["head"];
			_gold = (userObj["gold"] == null) ? 0 : userObj["gold"];
			_crystal = (userObj["crystal"] == null) ? 0 : userObj["crystal"];
			_honor = (userObj["honor"] == null) ? 0 : userObj["honor"];
			_nick = (userObj["name"] == null) ? "" : userObj["name"];
			_vipLevel = (userObj["vip"] == null) ? 0 : userObj["vip"];
			_snsName = (userObj["snsid"] == null) ? "" : userObj["snsid"];
			_userId = (userObj["id"] == null) ? 0 : userObj["id"];
			_title = (userObj["title"] == null) ? 0 : userObj["title"];
			
			var tempcard:Object = param["cards"];
			for (var i:String in tempcard)
			{
				if (tempcard[i] <= 0) continue;//去掉数量为０的
				var tempCardsModel:CardModel = new CardModel(int(i), tempcard[i]);
				tempCardsModel.oldNumber = tempcard[i];
				_cards.push(tempCardsModel);
				tempCardsModel = null;
			}
			tempcard = null;
			
			var tempDeck:Object = param["decks"];
			for (var j:String in tempDeck)
			{
				var tempDeckModel:DeckModel = new DeckModel();
				tempDeckModel.id = tempDeck[j].id;
				tempDeckModel.cards = tempDeck[j].cards;
				tempDeckModel.locked = tempDeck[j].locked;
				tempDeckModel.deckName = ((tempDeck[j].name == null) ? "" : tempDeck[j].name);
				_decks.push(tempDeckModel);
				tempDeckModel = null;
			}
			decks = _decks; //更新队伍设置界面一 updataTotalType
			
			//发送数据变化事件，个人面板、队伍设置界面数据更新（初始化时触发）
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			
			//显示新手引导
			/*if (!NewBieControler.getInstance().finishDic[NewBieModelId.FISET])
				{
					NewBieControler.getInstance().refresh();
					NewbiePane.getInstance().show();
					}*/
		}
		
		//--------------------------------------------------------
		/**
		 * 根据ID找出某张卡
		 * @param	parma
		 */
		public function findCardById(parma:int):CardModel
		{
			for (var i:String in _canUseCards)
			{
				if (_canUseCards[i].id == parma)
				{
					return _canUseCards[i];
				}
			}
			return null;
		}
		
		//--------------------------------------------------------
		/**
		 * 增加一张卡，如果已经有卡则数量加一
		 * 手动调用　updataTotalType更新　因为像开卡包这种只需要最后增加的一张卡后再更新不需要每次更新
		 * @param	parma
		 */
		public function addOneCard(parma:int):void
		{
			for (var i:String in _cards)
			{
				if (_cards[i].id == parma)
				{
					_cards[i].oldNumber += 1;//初始数量加一
					return;
				}
			}
			var temp:CardModel = new CardModel(parma);
			temp.oldNumber = 1;
			_cards.push(temp);
			temp = null;
			
		}
		
		/**
		 * 去掉一张卡
		 * @param	parma
		 * @param	parma 是否立即刷新
		 * @param	parma 去掉的张数
		 * @param	parma 是否数量为０时从库中去掉
		 */
		public function deleteOneCard(parma:int,refreshFlag:Boolean=true,deleteNum:int=1,real:Boolean=true):void
		{
			for (var i:String in _cards)
			{
				if (_cards[i].id == parma)
				{
					_cards[i].oldNumber -= deleteNum;
					if (real) {
						//是否判断原始卡的数量，如果为０则去掉卡
						if (_cards[i].oldNumber <= 0) {
							_cards.splice(int(i), 1);
							}
						}
					if(refreshFlag){
					updataTotalType();
					}
					return;
				}
			}
		}
		
		//--------------------------------------------------------
		/**
		 * 回收一个卡组中的卡
		 * @param	parma
		 */ /*public function recoveryDeckCard(parma:int):void {
		   for (var i:String in _decks) {
		   if (_decks[i].id == parma) {
		   var tempCards:Array = _decks[i].cards;
		   for (var j:String in tempCards) {
		   addOneCard(tempCards[j]);
		   }
		   updataTotalType();
		   return;
		   }
		   }
		 }*/
		//--------------------------------------------------------
		/**
		 * 更新所有的分类
		 */
		public function updataTotalType():void
		{
			updataCanUserCards()
			updataCards();
		}
		
		//--------------------------------------------------------
		/**
		 * 更新所有的可用卡
		 * @param	event
		 */
		public function updataCanUserCards():void
		{
			//trace("sdsfsdf");
			//现有卡组中所有的卡
			var _deckAllCards:Array = new Array();
			_canUseCards = _cards;
			//先还原卡原先的数量
			for (var n:String in _canUseCards)
			{
				_canUseCards[n].number = _canUseCards[n].oldNumber;
				//trace(_canUseCards[n].quality)
			}
			for (var j:String in _decks)
			{
				if (_decks[j].cards)
				{
					_deckAllCards = _deckAllCards.concat(_decks[j].cards);
				}
				
			}
			//trace(_deckAllCards.length)
			
			for (var i:int = 0; i < _canUseCards.length; i++)
			{
				judgeExistFormDeck(_canUseCards[i], _deckAllCards);
			}
			_deckAllCards = null;
			//按品质排序
			quickSort(_canUseCards, 0, _canUseCards.length - 1);
			//trace(_canUseCards)
		}
		
		/**
		 * 快速排序
		 * @param	a
		 * @param	a_low
		 * @param	a_high
		 */
		public function quickSort(a:Vector.<CardModel>, a_low:int, a_high:int):void
		{
			var low:int = a_low;
			var high:int = a_high;
			if (low >= high)
			{
				return;
			}
			var transfer:Boolean = true;
			while (low != high)
			{
				if (judgeQuality(a[low], a[high]))
				{
					var temp:CardModel = a[low];
					a[low] = a[high];
					a[high] = temp;
					transfer = (transfer == true) ? false : true;
				}
				transfer ? high-- : low++;
			}
			low--;
			high++;
			quickSort(a, a_low, low);
			quickSort(a, high, a_high);
		}
		
		//先按质量，再按ＩＤ
		private function judgeQuality(arg1:CardModel, arg2:CardModel):Boolean
		{
			var returnFalg:Boolean = false;
			if (arg1.quality < arg2.quality)
			{
				returnFalg = true;
				return returnFalg;
				}else if((arg1.quality == arg2.quality) && arg1.id<arg2.id){
					returnFalg = true;
					return returnFalg;
					}
			return returnFalg;
		}
		
		/**
		 * 判断卡组中是否存在这张卡
		 * @param	arg
		 * @param	deckAllCards
		 */
		private function judgeExistFormDeck(arg:CardModel, deckAllCards:Array):void
		{
			for (var i:String in deckAllCards)
			{
				if (deckAllCards[i] == arg.id)
				{
					arg.number--;
				}
			}
		}
		
		/**
		 * 更新所有的英雄卡,兵卡,法宝卡,神通卡
		 * @param	event
		 */
		public function updataCards():void
		{
			_HeroCards = null;
			_HeroCards = new Vector.<CardModel>();
			_MitacCards = null;
			_MitacCards = new Vector.<CardModel>();
			_TalismanCards = null;
			_TalismanCards = new Vector.<CardModel>();
			_SoldierCards = null;
			_SoldierCards = new Vector.<CardModel>();
			for (var i:String in _canUseCards)
			{
				if (_canUseCards[i].ally >= 0)
				{
					_HeroCards.push(_canUseCards[i]);
					
				}
				else if (_canUseCards[i]._Class == 12)
				{
					//装备卡
					_TalismanCards.push(_canUseCards[i]);
					
				}
				else if (_canUseCards[i]._Class == 13)
				{
					_MitacCards.push(_canUseCards[i]);
					
				}
				else
				{
					_SoldierCards.push(_canUseCards[i]);
				}
			}
		}
		
		//--------------------------------------------------------
		/**
		 * 返回指定种族的卡牌列表(加上无种族卡)
		 * @param	要找的种族ID
		 * @param	从哪个列表中查找
		 */
		public static function retunCardsByRace(raceid:int = 1, fromArr:Vector.<CardModel> = null):Vector.<CardModel>
		{
			var temp:Vector.<CardModel> = new Vector.<CardModel>();
			
			for (var i:int = 0; i < fromArr.length; i++)
			{
				if (fromArr[i].race == raceid || fromArr[i].race == 5)
				{
					temp.push(fromArr[i]);
				}
			}
			return temp;
		}
		
		//--------------------------------------------------------
		/**
		 * 返回去掉数量为0的卡
		 * @param	fromArr
		 * @return
		 */
		public static function removeCannotUseCard(fromArr:Vector.<CardModel>):Vector.<CardModel>
		{
			var tempArr:Vector.<CardModel> = new Vector.<CardModel>();
			
			for (var i:String in fromArr)
			{
				if (fromArr[i].number != 0)
				{
					tempArr.push(fromArr[i]);
				}
			}
			return tempArr;
		}
		
		//--------------------------------------------------------
		//--------------------------------------------------------
		/**
		 * 根据卡组ID返回卡组模型
		 * @param	arg
		 * @return
		 */
		public function returnDeckModelByDeckId(arg:int):DeckModel
		{
			var tempDeckModel:DeckModel = new DeckModel();
			
			for (var i:String in _decks)
			{
				if (arg == _decks[i].id)
				{
					tempDeckModel = _decks[i]
					return tempDeckModel;
				}
			}
			return null;
		}
		
		//====================================================
		//每秒触发一次，在用户信息数据模型中用于判断如果是在竞技场时，要实时更新时间，多久后才能再增加一次挑战
		/*private function onRecTimer(event:TimerEvent) : void
		   {
		   if (this._fightRecTime == 0)
		   {
		   if (SMZTUIManager.getInstance().mainPane.isArenaScene)
		   {
		   SMZTController.getInstance().initPlayerInfo(ModelLocator.getInstance().uId);
		   }
		   return;
		   }
		   if (this._fightRecTime > 0)
		   {
		   _fightRecTime--;
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_TIMER));
		   }
		   return;
		   }// end function
		
		   public function updateEquipStatus(param1:String, param2:XML) : void
		   {
		   if (param1 == "weapon")
		   {
		   this.setEuipedWeaponData(param2);
		   }
		   else
		   {
		   this.setEuipedOfficerData(param2);
		   }
		   return;
		   }// end function
		
		   private function setEuipedOfficerData(param1:XML) : void
		   {
		   var _loc_2:XML = null;
		   var _loc_3:OfficerItem = null;
		   this._officerArray.length = 0;
		   for each (_loc_2 in param1.EquipedPet.Pet)
		   {
		
		   _loc_3 = ItemBuilder.createItem(ItemCategory.OFFICER, _loc_2.@PetId) as OfficerItem;
		   _loc_3.exp = _loc_2.@Exp;
		   _loc_3.expMax = _loc_2.@ExpFull;
		   _loc_3.expRatio = _loc_2.@ExpPercent;
		   this._officerArray.push(_loc_3);
		   }
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   private function setEuipedWeaponData(param1:XML) : void
		   {
		   var _loc_2:XML = null;
		   var _loc_3:EquipItem = null;
		   var _loc_4:int = 0;
		   var _loc_5:XML = null;
		   var _loc_6:int = 0;
		   var _loc_7:String = null;
		   var _loc_8:XML = null;
		   var _loc_9:String = null;
		   var _loc_10:XML = null;
		   this._weaponArray.length = 0;
		   for each (_loc_2 in param1.EquipedWeapon.Weapon)
		   {
		
		   if (_loc_2)
		   {
		   _loc_3 = ItemBuilder.createItem(ItemCategory.WEAPON, _loc_2.@WeaponId) as EquipItem;
		   _loc_3.sId = _loc_2.@Id;
		   _loc_3.mosaicNum = _loc_2.@Hole;
		   _loc_3.canUpgrade = _loc_2.@Upgradable;
		   _loc_3.canUse = _loc_2.@Usable;
		   this._weaponArray.push(_loc_3);
		   _loc_4 = 0;
		   for each (_loc_5 in _loc_2.Effects.Effect)
		   {
		
		   _loc_6 = _loc_5.@Id;
		   _loc_7 = "";
		   for each (_loc_8 in ItemConfig.ITEM_EFFECT.Effect)
		   {
		
		   if (_loc_8.@Id == _loc_6)
		   {
		   _loc_7 = _loc_8.@Name;
		   }
		   }
		   _loc_9 = StringUtil.trim(_loc_7);
		   if (_loc_9 != "")
		   {
		   if (_loc_5.@Type < 2)
		   {
		   if (_loc_5.@Value < 1)
		   {
		   _loc_7 = _loc_7 + (_loc_5.@Value < 0 ? (XMath.formatNumber(_loc_5.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(_loc_5.@Value * 100, 1) + "%"));
		   }
		   else
		   {
		   _loc_7 = _loc_7 + (_loc_5.@Value < 0 ? (XMath.formatNumber(_loc_5.@Value, 1)) : ("+" + XMath.formatNumber(_loc_5.@Value, 1)));
		   }
		   if (_loc_4 < 1)
		   {
		   for each (_loc_10 in ItemConfig.WEAPON_CONFIG.Weapon)
		   {
		
		   if (_loc_10.@Id == _loc_2.@WeaponId)
		   {
		   _loc_3.baseEffect = _loc_10.@Info;
		   }
		   }
		   }
		   else
		   {
		   _loc_3.effect = _loc_3.effect + (_loc_7 + "<br/>");
		   }
		   _loc_4++;
		   continue;
		   }
		   if (_loc_5.@Value < 1)
		   {
		   _loc_7 = _loc_7 + (_loc_5.@Value < 0 ? (XMath.formatNumber(_loc_5.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(_loc_5.@Value * 100, 1) + "%"));
		   }
		   else
		   {
		   _loc_7 = _loc_7 + (_loc_5.@Value < 0 ? (XMath.formatNumber(_loc_5.@Value, 1)) : ("+" + XMath.formatNumber(_loc_5.@Value, 1)));
		   }
		   _loc_3.mosaic[int(_loc_5.@Position)] = _loc_5.@StoneId;
		   _loc_3.mosaicEffect[int(_loc_5.@Position)] = _loc_7;
		   _loc_3.mosaicValue[int(_loc_5.@Position)] = _loc_5.@Value;
		   }
		   }
		   }
		   }
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function setEquipedJewelries(param1:XML) : void
		   {
		   var _loc_2:XML = null;
		   var _loc_3:JewelryItem = null;
		   this._jewelryVector.length = 0;
		   for each (_loc_2 in param1.EquipedJewelry.Jewelry)
		   {
		
		   if (_loc_2)
		   {
		   _loc_3 = ItemBuilder.createItem(ItemCategory.JEWELRY, _loc_2.@JewelryId, _loc_2.@Id, _loc_2.Effects.Effect) as JewelryItem;
		   _loc_3.quality = _loc_2.@Quality;
		   _loc_3.isIdentified = _loc_2.@Identified == 1;
		   _loc_3.attrPaneIndex = _loc_2.@Equiped;
		   _loc_3.setId = _loc_2.@SetId;
		   _loc_3.setAmount = _loc_2.@SetAmount;
		   this._jewelryVector.push(_loc_3);
		   }
		   }
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function setPlayerData(param1:XML) : void
		   {
		   var _loc_2:XML = null;
		   var _loc_3:XML = null;
		   var _loc_4:XML = null;
		   var _loc_5:XML = null;
		   var _loc_6:UserBuff = null;
		   var _loc_7:UserBuff = null;
		   var _loc_8:JewelryItem = null;
		   var _loc_9:EquipItem = null;
		   var _loc_10:int = 0;
		   var _loc_11:XML = null;
		   var _loc_12:int = 0;
		   var _loc_13:String = null;
		   var _loc_14:XML = null;
		   var _loc_15:XML = null;
		   var _loc_16:OfficerItem = null;
		   this._gather = 0;
		   if (param1.hasOwnProperty("Gather"))
		   {
		   this._gather = ServerDataTranslator.hasSeceneRubish(param1.Gather);
		   }
		   this._isVip = param1.IsVip;
		   this._userId = param1.User.UserId;
		   if (this._userId == ModelLocator.getInstance().uId)
		   {
		   this._ownLevel = param1.UserDynamic.Level;
		   this._ownVip = param1.IsVip;
		   }
		   if (param1.hasOwnProperty("NewbieItem"))
		   {
		   this._newbieItem = param1.NewbieItem;
		   }
		   else
		   {
		   this._newbieItem = 0;
		   }
		   this._nick = param1.User.Name;
		   this._newbieStep = param1.User.Intro;
		   this._health = param1.UserDynamic.HP;
		   this._strength = param1.UserDynamic.Strength;
		   this._strengthPlus = param1.UserDynamic.StrengthPlus;
		   this._agility = param1.UserDynamic.Dexterity;
		   this._agilityPlus = param1.UserDynamic.DexterityPlus;
		   this._speed = param1.UserDynamic.Speed;
		   this._speedPlus = param1.UserDynamic.SpeedPlus;
		   this.skin = param1.User.Skin % 10;
		   if (param1.hasOwnProperty("Announcement"))
		   {
		   ShareController.triggerNormalShare(param1.Announcement);
		   }
		   this._playerLevel = param1.UserDynamic.Level;
		   this._expRec = param1.UserDynamic.ExperienceRequired;
		   this._expGain = param1.UserDynamic.Experience;
		   this._expRatio = param1.UserDynamic.ExperiencePercent;
		   this._playerLevel = param1.UserDynamic.Level;
		   this._playerWins = param1.UserDynamic.Wins;
		   this._playerLoses = param1.UserDynamic.Loses;
		   this._perfectWins = param1.UserDynamic.PerfectWins;
		   this._sign = param1.UserDynamic.PersonalSignature;
		   this._prentice = param1.UserDynamic.Prentice;
		   this._winpoint = param1.UserDynamic.WinPoint;
		   this._money = param1.UserDynamic.Gold;
		   this._foo = param1.UserDynamic.WinPoint;
		   this._occupation = ModelLocator.getInstance().getJobStr(int(param1.UserDynamic.Job));
		   this._occ = param1.UserDynamic.Job;
		   this._attrPoint = param1.UserDynamic.Point;
		   this._achievement = param1.UserDynamic.Achivement;
		   this._winSign = param1.UserDynamic.VictoryDeclare;
		   this._element = param1.UserDynamic.Element;
		   this._elementStr = param1.UserDynamic.Element.@Text;
		   this._showNotice = param1.ShowNotice;
		   if (String(param1.User.Avatar).indexOf("http://img.kaixin001.com.cn/") > -1)
		   {
		   this._avatar = ModelLocator.getInstance().staticURL + "game/" + ApplicationConfig.VERSION + "/assets/images/kx_men.gif";
		   }
		   else
		   {
		   this._avatar = param1.User.Avatar;
		   }
		   this._snsAcc = param1.User.SNSAcc;
		   this._buffArr.length = 0;
		   for each (_loc_2 in param1.Buffs.UserBuff)
		   {
		
		   if (_loc_2.@BuffId > 0 && _loc_2.@buffId != 217)
		   {
		   _loc_6 = new UserBuff(_loc_2.@BuffId, _loc_2.@BuffType, _loc_2.@ExpTime, _loc_2.@Amount);
		   this._buffArr.push(_loc_6);
		   if (_loc_2.@TimeUp == 1)
		   {
		   _loc_6.isShort = true;
		   }
		   if (_loc_6.buffId == 9 && this._ownVip >= 1)
		   {
		   _loc_6.vipLevel = this._ownVip;
		   }
		   }
		   }
		   this._sinaVip = param1.User.SNSVip;
		   if (ModelLocator.getInstance().snsType == ModelLocator.SNS_SINA)
		   {
		   if (this._sinaVip == 2)
		   {
		   _loc_7 = new UserBuff(215, 1, "", 1);
		   this._buffArr.push(_loc_7);
		   }
		   }
		   this._suitItem = null;
		   if (param1.hasOwnProperty("UserAvatar"))
		   {
		   this._suitItem = ItemBuilder.createItem(ItemCategory.SUIT, param1.UserAvatar.@AvatarId, param1.UserAvatar.@Id) as SuitItem;
		   this._suitItem.expireTime = param1.UserAvatar.@Expire;
		   this._suitItem.isEquiped = param1.UserAvatar.@Equiped == 1;
		   }
		   this._jewelryVector.length = 0;
		   for each (_loc_3 in param1.EquipedJewelry.Jewelry)
		   {
		
		   if (_loc_3)
		   {
		   _loc_8 = ItemBuilder.createItem(ItemCategory.JEWELRY, _loc_3.@JewelryId, _loc_3.@Id, _loc_3.Effects.Effect) as JewelryItem;
		   _loc_8.quality = _loc_3.@Quality;
		   _loc_8.isIdentified = _loc_3.@Identified == 1;
		   _loc_8.attrPaneIndex = _loc_3.@Equiped;
		   _loc_8.setId = _loc_3.@SetId;
		   _loc_8.setAmount = _loc_3.@SetAmount;
		   _loc_8.isEquiped = 1;
		   this._jewelryVector.push(_loc_8);
		   }
		   }
		   this._weaponArray.length = 0;
		   for each (_loc_4 in param1.EquipedWeapon.Weapon)
		   {
		
		   if (_loc_4)
		   {
		   _loc_9 = ItemBuilder.createItem(ItemCategory.WEAPON, _loc_4.@WeaponId) as EquipItem;
		   _loc_9.sId = _loc_4.@Id;
		   _loc_9.canUpgrade = _loc_4.@Upgradable;
		   _loc_9.quality = int(_loc_4.@Quality);
		   trace(_loc_9.quality);
		   _loc_9.canUse = _loc_4.@Usable;
		   _loc_9.mosaicNum = _loc_4.@Hole;
		   _loc_10 = 0;
		   for each (_loc_11 in _loc_4.Effects.Effect)
		   {
		
		   _loc_12 = _loc_11.@Id;
		   _loc_13 = "";
		   for each (_loc_14 in ItemConfig.ITEM_EFFECT.Effect)
		   {
		
		   if (_loc_14.@Id == _loc_12)
		   {
		   _loc_13 = _loc_14.@Name;
		   }
		   }
		   if (StringUtil.trim(_loc_13) != "")
		   {
		   if (_loc_11.@Type < 2)
		   {
		   if (_loc_11.@Value < 1)
		   {
		   _loc_13 = _loc_13 + (_loc_11.@Value < 0 ? (XMath.formatNumber(_loc_11.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(_loc_11.@Value * 100, 1) + "%"));
		   }
		   else
		   {
		   _loc_13 = _loc_13 + (_loc_11.@Value < 0 ? (XMath.formatNumber(_loc_11.@Value, 1)) : ("+" + XMath.formatNumber(_loc_11.@Value, 1)));
		   }
		   if (_loc_10 < 1)
		   {
		   for each (_loc_15 in ItemConfig.WEAPON_CONFIG.Weapon)
		   {
		
		   if (_loc_15.@Id == _loc_4.@WeaponId)
		   {
		   _loc_9.baseEffect = _loc_15.@Info;
		   }
		   }
		   }
		   else
		   {
		   _loc_9.effect = _loc_9.effect + (_loc_13 + "<br/>");
		   }
		   _loc_10++;
		   continue;
		   }
		   if (_loc_11.@Value < 1)
		   {
		   _loc_13 = _loc_13 + (_loc_11.@Value < 0 ? (XMath.formatNumber(_loc_11.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(_loc_11.@Value * 100, 1) + "%"));
		   }
		   else
		   {
		   _loc_13 = _loc_13 + (_loc_11.@Value < 0 ? (XMath.formatNumber(_loc_11.@Value, 1)) : ("+" + XMath.formatNumber(_loc_11.@Value, 1)));
		   }
		   _loc_9.mosaic[int(_loc_11.@Position)] = _loc_11.@StoneId;
		   _loc_9.mosaicEffect[int(_loc_11.@Position)] = _loc_13;
		   _loc_9.mosaicValue[int(_loc_11.@Position)] = _loc_11.@Value;
		   }
		   }
		   this._weaponArray.push(_loc_9);
		   }
		   }
		   this._officerArray.length = 0;
		   for each (_loc_5 in param1.EquipedPet.Pet)
		   {
		
		   _loc_16 = ItemBuilder.createItem(ItemCategory.OFFICER, _loc_5.@PetId) as OfficerItem;
		   _loc_16.exp = _loc_5.@Exp;
		   _loc_16.expMax = _loc_5.@ExpFull;
		   _loc_16.expRatio = _loc_5.@ExpPercent;
		   _loc_16.weaponId = _loc_5.@WeaponId;
		   _loc_16.skillId = _loc_5.@SkillId;
		   this._officerArray.push(_loc_16);
		   }
		   this._skillBuildingLv = param1.UserDynamic.SkillBuild;
		   this._officerBuildingLv = param1.UserDynamic.PetBuild;
		   this._weaponBuildingLv = param1.UserDynamic.WeaponBuild;
		   this._budoukaiBuildingLv = param1.UserDynamic.TournamentBuild;
		   this._champinBuildingLv = param1.UserDynamic.ArenaBuild;
		   this.recTimer.stop();
		   this.recTimer.reset();
		   this._fightCount = param1.FightCount.@Left;
		   this._fightMax = param1.FightCount.@Limit;
		   this._fightRecTime = param1.FightCount.@Second;
		   if (ModelLocator.getInstance().currentUId == ModelLocator.getInstance().uId)
		   {
		   if (this._fightRecTime != -1)
		   {
		   this.recTimer.start();
		   }
		   }
		   this._addPVPCount = param1.Buyed;
		   if (param1.hasOwnProperty("Package360"))
		   {
		   if (param1.Package360 == 1)
		   {
		   this.is360 = true;
		   }
		   }
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function refreshPlayerData(param1:XML) : void
		   {
		   if (param1.UserDynamic.UserId)
		   {
		   this._userId = param1.UserDynamic.UserId;
		   }
		   if (param1.UserDynamic.HP)
		   {
		   this._health = param1.UserDynamic.HP;
		   }
		   if (param1.UserDynamic.Strength)
		   {
		   this._strength = param1.UserDynamic.Strength;
		   }
		   if (param1.UserDynamic.StrengthPlus)
		   {
		   this._strengthPlus = param1.UserDynamic.StrengthPlus;
		   }
		   if (param1.UserDynamic.Dexterity)
		   {
		   this._agility = param1.UserDynamic.Dexterity;
		   }
		   if (param1.UserDynamic.DextertyPlus)
		   {
		   this._agilityPlus = param1.UserDynamic.DextertyPlus;
		   }
		   if (param1.UserDynamic.Speed)
		   {
		   this.speed = param1.UserDynamic.Speed;
		   }
		   if (param1.UserDynamic.SpeedPlus)
		   {
		   this._speedPlus = param1.UserDynamic.SpeedPlus;
		   }
		   if (param1.UserDynamic.Level)
		   {
		   this._playerLevel = param1.UserDynamic.Level;
		   }
		   if (param1.UserDynamic.ExperiencePercent)
		   {
		   this._expRatio = param1.UserDynamic.ExperiencePercent;
		   }
		   if (param1.UserDynamic.ExperienceRequired)
		   {
		   this._expRec = param1.UserDynamic.ExperienceRequired;
		   }
		   if (param1.UserDynamic.Experience)
		   {
		   this._expGain = param1.UserDynamic.Experience;
		   }
		   if (param1.UserDynamic.PersonalSignature)
		   {
		   this._sign = param1.UserDynamic.PersonalSignature;
		   }
		   if (param1.UserDynamic.WinPoint)
		   {
		   this._winpoint = param1.UserDynamic.WinPoint;
		   }
		   if (param1.UserDynamic.Point)
		   {
		   this._attrPoint = param1.UserDynamic.Point;
		   }
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function refreshGoldSilver(param1:int, param2:int) : void
		   {
		   this._money = param1;
		   this._foo = param2;
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH));
		   return;
		   }// end function
		
		   public function get renrenAcct() : String
		   {
		   return this._renrenAcct;
		   }// end function
		
		   public function set renrenAcct(param1:String) : void
		   {
		   this._renrenAcct = param1;
		   return;
		   }// end function
		
		
		
		   public function get foo() : int
		   {
		   return this._foo;
		   }// end function
		
		   public function set foo(param1:int) : void
		   {
		   this._foo = param1;
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		   public function get winpoint() : String
		   {
		   return this._winpoint;
		   }// end function
		
		   public function set winpoint(param1:String) : void
		   {
		   this._winpoint = param1;
		   dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		   return;
		   }// end function
		
		
		
		   public function get occupation() : String
		   {
		   return this._occupation;
		   }// end function
		
		   public function set occupation(param1:String) : void
		   {
		   this._occupation = param1;
		   return;
		   }// end function
		
		   public function get element() : int
		   {
		   return this._element;
		   }// end function
		
		   public function set element(param1:int) : void
		   {
		   this._element = param1;
		   return;
		   }// end function
		
		   public function get sign() : String
		   {
		   return this._sign;
		   }// end function
		
		   public function set sign(param1:String) : void
		   {
		   this._sign = param1;
		   return;
		   }// end function
		
		   public function get attrPoint() : int
		   {
		   return this._attrPoint;
		   }// end function
		
		   public function set attrPoint(param1:int) : void
		   {
		   this._attrPoint = param1;
		   return;
		   }// end function
		
		   public function get health() : int
		   {
		   return this._health;
		   }// end function
		
		   public function set health(param1:int) : void
		   {
		   this._health = param1;
		   return;
		   }// end function
		
		   public function get strength() : int
		   {
		   return this._strength;
		   }// end function
		
		   public function set strength(param1:int) : void
		   {
		   this._strength = param1;
		   return;
		   }// end function
		
		   public function get agility() : int
		   {
		   return this._agility;
		   }// end function
		
		   public function set agility(param1:int) : void
		   {
		   this._agility = param1;
		   return;
		   }// end function
		
		   public function get speed() : int
		   {
		   return this._speed;
		   }// end function
		
		   public function set speed(param1:int) : void
		   {
		   this._speed = param1;
		   return;
		   }// end function
		
		
		
		   public function get weaponArray() : Vector.<EquipItem>
		   {
		   return this._weaponArray;
		   }// end function
		
		   public function get officerArray() : Vector.<OfficerItem>
		   {
		   return this._officerArray;
		   }// end function
		
		
		
		   public function get playerWins() : int
		   {
		   return this._playerWins;
		   }// end function
		
		   public function set playerWins(param1:int) : void
		   {
		   this._playerWins = param1;
		   return;
		   }// end function
		
		   public function get playerLoses() : int
		   {
		   return this._playerLoses;
		   }// end function
		
		   public function set playerLoses(param1:int) : void
		   {
		   this._playerLoses = param1;
		   return;
		   }// end function
		
		   public function get prentice() : int
		   {
		   return this._prentice;
		   }// end function
		
		   public function set prentice(param1:int) : void
		   {
		   this._prentice = param1;
		   return;
		   }// end function
		
		   public function get winSign() : String
		   {
		   return this._winSign;
		   }// end function
		
		   public function set winSign(param1:String) : void
		   {
		   this._winSign = param1;
		   return;
		   }// end function
		
		   public function get occ() : int
		   {
		   return this._occ;
		   }// end function
		
		   public function set occ(param1:int) : void
		   {
		   this._occ = param1;
		   return;
		   }// end function
		
		   public function get elementStr() : String
		   {
		   return this._elementStr;
		   }// end function
		
		   public function set elementStr(param1:String) : void
		   {
		   this._elementStr = param1;
		   return;
		   }// end function
		
		   public function get agilityPlus() : int
		   {
		   return this._agilityPlus;
		   }// end function
		
		   public function set agilityPlus(param1:int) : void
		   {
		   this._agilityPlus = param1;
		   return;
		   }// end function
		
		   public function get strengthPlus() : int
		   {
		   return this._strengthPlus;
		   }// end function
		
		   public function set strengthPlus(param1:int) : void
		   {
		   this._strengthPlus = param1;
		   return;
		   }// end function
		
		   public function get speedPlus() : int
		   {
		   return this._speedPlus;
		   }// end function
		
		   public function set speedPlus(param1:int) : void
		   {
		   this._speedPlus = param1;
		   return;
		   }// end function
		
		   public function get skillVector() : Vector.<ItemModel>
		   {
		   return this._skillVector;
		   }// end function
		
		   public function set skillVector(param1:Vector.<ItemModel>) : void
		   {
		   this._skillVector = param1;
		   return;
		   }// end function
		
		   public function get skillBuildingLv() : int
		   {
		   return this._skillBuildingLv;
		   }// end function
		
		   public function set skillBuildingLv(param1:int) : void
		   {
		   this._skillBuildingLv = param1;
		   return;
		   }// end function
		
		   public function get officerBuildingLv() : int
		   {
		   return this._officerBuildingLv;
		   }// end function
		
		   public function set officerBuildingLv(param1:int) : void
		   {
		   this._officerBuildingLv = param1;
		   return;
		   }// end function
		
		   public function get weaponBuildingLv() : int
		   {
		   return this._weaponBuildingLv;
		   }// end function
		
		   public function set weaponBuildingLv(param1:int) : void
		   {
		   this._weaponBuildingLv = param1;
		   return;
		   }// end function
		
		   public function get buffArr() : Vector.<UserBuff>
		   {
		   return this._buffArr;
		   }// end function
		
		   public function set buffArr(param1:Vector.<UserBuff>) : void
		   {
		   this._buffArr = param1;
		   return;
		   }// end function
		
		   public function get fightCount() : int
		   {
		   return this._fightCount;
		   }// end function
		
		   public function set fightCount(param1:int) : void
		   {
		   this._fightCount = param1;
		   return;
		   }// end function
		
		   public function get achievement() : int
		   {
		   return this._achievement;
		   }// end function
		
		   public function set achievement(param1:int) : void
		   {
		   this._achievement = param1;
		   return;
		   }// end function
		
		   public function get fightMax() : int
		   {
		   return this._fightMax;
		   }// end function
		
		   public function set fightMax(param1:int) : void
		   {
		   this._fightMax = param1;
		   return;
		   }// end function
		
		   public function get fightRecTime() : int
		   {
		   return this._fightRecTime;
		   }// end function
		
		   public function set fightRecTime(param1:int) : void
		   {
		   this._fightRecTime = param1;
		   return;
		   }// end function
		
		   public function get fightRecRatio() : int
		   {
		   return this._fightRecRatio;
		   }// end function
		
		   public function set fightRecRatio(param1:int) : void
		   {
		   this._fightRecRatio = param1;
		   return;
		   }// end function
		
		   public function get addPVPCount() : int
		   {
		   return this._addPVPCount;
		   }// end function
		
		   public function set addPVPCount(param1:int) : void
		   {
		   this._addPVPCount = param1;
		   return;
		   }// end function
		
		   public function get newbieQuestVector() : Vector.<NewbieQuest>
		   {
		   return this._newbieQuestVector;
		   }// end function
		
		   public function set newbieQuestVector(param1:Vector.<NewbieQuest>) : void
		   {
		   this._newbieQuestVector = param1;
		   return;
		   }// end function
		
		   public function get currentNewbieQuest() : NewbieQuest
		   {
		   return this._currentNewbieQuest;
		   }// end function
		
		   public function set currentNewbieQuest(param1:NewbieQuest) : void
		   {
		   this._currentNewbieQuest = param1;
		   return;
		   }// end function
		
		   public function get budoukaiBuildingLv() : int
		   {
		   return this._budoukaiBuildingLv;
		   }// end function
		
		   public function set budoukaiBuildingLv(param1:int) : void
		   {
		   this._budoukaiBuildingLv = param1;
		   return;
		   }// end function
		
		   public function get champinBuildingLv() : int
		   {
		   return this._champinBuildingLv;
		   }// end function
		
		   public function set champinBuildingLv(param1:int) : void
		   {
		   this._champinBuildingLv = param1;
		   return;
		   }// end function
		
		
		
		   public function get gather() : int
		   {
		   return this._gather;
		   }// end function
		
		   public function set gather(param1:int) : void
		   {
		   this._gather = param1;
		   return;
		   }// end function
		
		
		
		   public function get showNotice() : int
		   {
		   return this._showNotice;
		   }// end function
		
		   public function set showNotice(param1:int) : void
		   {
		   this._showNotice = param1;
		   return;
		   }// end function
		
		
		
		   public function get pveAuth() : String
		   {
		   return this._pveAuth;
		   }// end function
		
		   public function set pveAuth(param1:String) : void
		   {
		   this._pveAuth = param1;
		   return;
		   }// end function
		
		   public function get teaseAuth() : String
		   {
		   return this._teaseAuth;
		   }// end function
		
		   public function set teaseAuth(param1:String) : void
		   {
		   this._teaseAuth = param1;
		   return;
		   }// end function
		
		   public function get newbieItem() : int
		   {
		   return this._newbieItem;
		   }// end function
		
		   public function set newbieItem(param1:int) : void
		   {
		   this._newbieItem = param1;
		   return;
		   }// end function
		
		   public function get snsAcc() : String
		   {
		   return this._snsAcc;
		   }// end function
		
		   public function set snsAcc(param1:String) : void
		   {
		   this._snsAcc = param1;
		   return;
		   }// end function
		
		   public function get jewelryVector() : Vector.<JewelryItem>
		   {
		   return this._jewelryVector;
		   }// end function
		
		   public function set jewelryVector(param1:Vector.<JewelryItem>) : void
		   {
		   this._jewelryVector = param1;
		   return;
		   }// end function
		
		   public function get isFans() : int
		   {
		   return this._isFans;
		   }// end function
		
		   public function set isFans(param1:int) : void
		   {
		   this._isFans = param1;
		   return;
		   }// end function
		
		   public function get sinaVip() : int
		   {
		   return this._sinaVip;
		   }// end function
		
		   public function set sinaVip(param1:int) : void
		   {
		   this._sinaVip = param1;
		   return;
		   }// end function
		
		   public function get is360() : Boolean
		   {
		   return this._is360;
		   }// end function
		
		   public function set is360(param1:Boolean) : void
		   {
		   this._is360 = param1;
		   return;
		   }// end function
		
		   public function get snsVip() : uint
		   {
		   return this._snsVip;
		   }// end function
		
		   public function set snsVip(param1:uint) : void
		   {
		   this._snsVip = param1;
		   return;
		   }// end function
		
		
		
		   public function get suitItem() : SuitItem
		   {
		   return this._suitItem;
		   }// end function
		
		   public function set suitItem(param1:SuitItem) : void
		   {
		   this._suitItem = param1;
		   return;
		   }// end function
		
		   public function get skin() : int
		   {
		   return this._skin;
		   }// end function
		
		   public function set skin(param1:int) : void
		   {
		   this._skin = param1;
		   return;
		   }// end function
		
		 */
		
		/*public function get isVip() : int
		   {
		   return this._isVip;
		   }// end function
		
		   public function set isVip(param1:int) : void
		   {
		   this._isVip = param1;
		   return;
		 }// end function*/
		
		public function get TalismanCards():Vector.<CardModel>
		{
			return _TalismanCards;
		} // end function
		
		public function set TalismanCards(param1:Vector.<CardModel>):void
		{
			_TalismanCards = param1;
			return;
		} // end function
		
		public function get MitacCards():Vector.<CardModel>
		{
			return _MitacCards;
		} // end function
		
		public function set MitacCards(param1:Vector.<CardModel>):void
		{
			_MitacCards = param1;
			return;
		} // end function
		
		public function get SoldierCards():Vector.<CardModel>
		{
			return _SoldierCards;
		} // end function
		
		public function set SoldierCards(param1:Vector.<CardModel>):void
		{
			_SoldierCards = param1;
			return;
		} // end function
		
		public function get HeroCards():Vector.<CardModel>
		{
			return _HeroCards;
		} // end function
		
		public function set HeroCards(param1:Vector.<CardModel>):void
		{
			_HeroCards = param1;
			return;
		} // end function
		
		public function get level():int
		{
			return this._level;
		} // end function
		
		public function set level(param1:int):void
		{
			this._level = param1;
			return;
		} // end function
		
		public function get newbieStep():int
		{
			return this._newbieStep;
		} // end function
		
		public function set newbieStep(param1:int):void
		{
			this._newbieStep = param1;
			return;
		} // end function
		
		public function get honor():int
		{
			return _honor;
		} // end function
		
		public function set honor(param1:int):void
		{
			_honor = param1;
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			return;
		} // end function
		
		public function get crystal():int
		{
			return _crystal;
		} // end function
		
		public function set crystal(param1:int):void
		{
			_crystal = param1;
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			return;
		} // end function
		
		public function get cardsNum():int
		{
			for (var i:String in _cards)
			{
				_cardsNum += (_cards[i] as CardModel).number;
			}
			
			return _cardsNum;
		} // end function
		
		public function set cardsNum(param1:int):void
		{
			_cardsNum = param1;
			return;
		} // end function
		
		public function get expStr():String
		{
			_expStr = String(_expGain) + " / " + String(expRec);
			return _expStr;
		} // end function
		
		public function set expStr(param1:String):void
		{
			_expStr = param1;
			return;
		} // end function
		
		public function get expRatio():int
		{
			_expRatio = Math.round((_expGain / expRec) * 100);
			return this._expRatio;
		} // end function
		
		public function set expRatio(param1:int):void
		{
			this._expRatio = param1;
			return;
		} // end function
		
		public function get userId():int
		{
			return this._userId;
		} // end function
		
		public function set userId(param1:int):void
		{
			this._userId = param1;
			return;
		} // end function
		
		public function get expRec():int
		{
			if (ItemConfig.LEVEL_CONFIG.Level.(@ID == (level + 1)).@Exp)
			{
				_expRec = ItemConfig.LEVEL_CONFIG.Level.(@ID == (level + 1)).@Exp;
			}
			else
			{
				_expRec = 10000000;
			}
			
			return this._expRec;
		} // end function
		
		public function set expRec(param1:int):void
		{
			this._expRec = param1;
			return;
		} // end function
		
		public function get expGain():int
		{
			return this._expGain;
		} // end function
		
		public function set expGain(param1:int):void
		{
			this._expGain = param1;
			if (_expGain >= _expRec) {
				_level += 1;
				}
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			return;
		} // end function
		
		public function get snsName():String
		{
			return this._snsName;
		} // end function
		
		public function set snsName(param1:String):void
		{
			this._snsName = param1;
			return;
		} // end function
		
		public function get ownVip():Boolean
		{
			if (_vipLevel > 0)
			_ownVip = true;
			else
			_ownVip = false;
			return this._ownVip;
		} // end function
		
		public function set ownVip(param1:Boolean):void
		{
			this._ownVip = param1;
			return;
		} // end function
		
		public function get nick():String
		{
			return this._nick;
		} // end function
		
		public function set nick(param1:String):void
		{
			this._nick = param1;
			return;
		} // end function
		
		public function get avatar():String
		{
			return this._avatar;
		} // end function
		
		public function set avatar(param1:String):void
		{
			this._avatar = param1;
			return;
		} // end function
		
		public function get gold():int
		{
			return this._gold;
		} // end function
		
		public function set gold(param1:int):void
		{
			this._gold = param1;
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			return;
		} // end function
		
		public function get decks():Vector.<DeckModel>
		{
			return _decks;
		} // end function
		
		public function set decks(param1:Vector.<DeckModel>):void
		{
			//只针对队伍设置界面一，通知卡组数据更新（增加，解除卡组时）
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH, "DECK_ADD_DELETE"));
			_decks = param1;
			
			updataTotalType();
			return;
		} // end function
		
		public function get canUseCards():Vector.<CardModel>
		{
			return _canUseCards;
		} // end function
		
		public function set canUseCards(param1:Vector.<CardModel>):void
		{
			_canUseCards = param1;
			//只针对于编辑卡组面板，通知可用卡的更新
			//dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_REFRESH,"EditDeckPanel"));
			return;
		} // end function
		
		public function get newbieItem():int
		{
			return _newbieItem;
		} // end function
		
		public function set newbieItem(param1:int):void
		{
			_newbieItem = param1;
			return;
		} // end function
		
		public function get cards():Vector.<CardModel>
		{
			return _cards;
		} // end function
		
		public function set cards(param1:Vector.<CardModel>):void
		{
			_cards = param1;
			//dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			return;
		} // end function
		
		public function get title():int 
		{
			return _title;
		}
		
		public function set title(value:int):void 
		{
			_title = value;
		}
		
		public function get vipLevel():int 
		{
			return _vipLevel;
		}
		
		public function set vipLevel(value:int):void 
		{
			_vipLevel = value;
		}
		
		public function get validDecksNum():int 
		{
			_validDecksNum = 0;
			for (var i:String in _decks) {
				if (_decks[i].cards) {
					_validDecksNum++;
					}
				}
			return _validDecksNum;
		}
		
		public function set validDecksNum(value:int):void 
		{
			_validDecksNum = value;
		}
		
		public static function getInstance():PlayerData
		{
			if (playerData == null)
			{
				playerData = new PlayerData;
			}
			return playerData;
		} // end function
	
	}
}
