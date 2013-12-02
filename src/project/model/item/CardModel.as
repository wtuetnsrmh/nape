package project.model.item
{
	/*
	* 描述：所有卡牌的数据模型
	* 
	*/
	import flash.system.System;
	import project.config.ApplicationConfig;
    import project.config.ItemConfig;
	import project.config.LocalConfig;
    import project.model.ModelLocator;
	import project.utils.CustomTool;
	import starling.events.EventDispatcher;

    public class CardModel extends EventDispatcher implements ICardModel
    {
		private var _name:String;//1．	卡牌名称
		private var _class:int;//2．	卡牌职业  卡牌种类分为、：1.英雄 2.佣兵：不死 战士 龙族  骑兵 怪物 魔族  野兽 射手 魔神 魔法阵 3.装备 4.法术
		private var _className:String;//卡牌职业对应的中文
		private var _isLeader:Boolean = false;
		private var _hp:int;//生命值
		private var _ap:int;//攻击力 卡牌的攻击属性，战斗中攻击方的攻击力=防守方失去的生命值 
		private var _sp:int;//行动力 代表卡牌在发牌区的等待回合数，回合数到则进入战斗区域。 
		
		private var _race:int=1;//种族  描述：关系到卡牌对战时的技能影响，种族之间有相克关系    种族分类：人族 希腊神族 北欧神族  异界神族  无种族
		private var _quality:int=1;//品质
		private var _star:int=1;//星级
		private var _maxStar:int=4;//能升级的最大星级
		private var _skills:Vector.<SkillModel>;//卡牌拥有的技能集
		private var _description:String;//怪物介绍： 卡牌怪物的背景介绍
		
		private var _id:int=0;//卡牌ID
		private var _imageUrl:String;//卡的图片地址，地址像：asset/image/cards/{大：b,中：m,小：s}/1.jpg  
		private var _middleCardImage:String;//中卡地址
		private var _bigCardImage:String;//大卡地址
		private var _smallCardImage:String;//小卡地址
		private var _charactersImage:String;//队伍设置界面中的英雄图像地址
		
		private var _canUse:Boolean = false;//是否可用 数量为0时不可用
		private var _number:int = 0;//数量
		private var _oldNumber:int = 0;//原先数量
		public var editDeckOldNum:int = 0;//编辑卡组前的卡数量
		
		private var _canUpgrade:Boolean;//能否升级
		private var _for1:String;//进化阶段1
		private var _for2:String;//进化阶段2
		private var _for3:String;//进化阶段3
		
		private var _ally:int=0;//3．	卡牌带兵数量
		private var _talisman:int;//法宝数 如果是英雄卡时，可以带的法宝数
		private var _mitac:int;//神通
		
		private var _attackMode:int = 1;//普通攻击的方式：1-近战 2-远程
		
		private var _imageSrcPrefix:String;//图片的文件夹地址
		
		private var _starCard:int = -1;//升后的卡的ＩＤ
		private var _starRequiredGold:int =0;//升阶消费的金币
		private var _starRequiredHonor:int =0;//升阶消费的荣誉


		/**
		 * 
		* @ param1 id
		* 
		* @ param2 class
		* @ param3 _quality
		* @ param4 _star
		* @ param5 _skills
		* @ param6 _race
		* @ param7 _number
		* @ param8 _talisman
		* @ param9 _mitac
		*/
        public function CardModel(param1:int = 0,param7:int=1)
        {
            
            _id = param1;
            
            _number = param7;
			
			_imageSrcPrefix="S/"
			/*//矢量就用SWF，位置用GIF
			_smallCardImage = imageSrcPrefix + "s/" + CustomTool.turn000Num(_id) + ".atf";
			_middleCardImage = imageSrcPrefix + "m/" +  CustomTool.turn000Num(_id) + ".atf";
			_bigCardImage=imageSrcPrefix +  CustomTool.turn000Num(_id) + ".atf";*/
			//_charactersImage=ModelLocator.getInstance().dynamicURL+"assets/images/characters/"+  CustomTool.turn000Num(_id) + ".png";//http://{assetsurl}/assets/images/characters/{cardid}.png
			
            var _loc_13:XML = null ;// ItemConfig.CARD_CONFIG.Card.(@ID == String(_id));
			if (_id == 0) return;
			//-------------------------配置文件中卡的ＩＤ要保证按顺序排------------------------------------------------------------------
			_loc_13 = ItemConfig.CARD_CONFIG.Card[_id-1];
			//根据配置文件设置此卡牌的其他数据
                if (_loc_13.@ID == String(_id))
                {
					//trace(_loc_13.toXMLString())
					//trace(_loc_13.@Name)
                    _name = _loc_13.@Name;
                    _description = _loc_13.@Description;
                    _class = _loc_13.@Class;
					_className = ItemConfig.CHARACTERS_CONFIG.CardClass.(@id == _class).@Text;
					_quality = _loc_13.@Quality;
					_star = _loc_13.@Star;
					_maxStar = _loc_13.@MaxStar;
					
					_starCard=(_loc_13.StarCard=="")?0:int(_loc_13.StarCard);
					_starRequiredGold= (_loc_13.StarRequiredGold=="")?0:int(_loc_13.StarRequiredGold);
					_starRequiredHonor=(_loc_13.StarRequiredHonor=="")?0:int(_loc_13.StarRequiredHonor);
					
					_skills = new Vector.<SkillModel>;
					_skills = analysisSkillXML(_loc_13);
					_race = _loc_13.@Race;
					_talisman = (_loc_13.Talisman=="")?0:int(_loc_13.Talisman);
					_mitac = (_loc_13.Mitac == "")?0:int(_loc_13.Mitac);
					_for1= (_loc_13.R1 == "")?"":returnCardNameById(int(_loc_13.R1));
					_for2= (_loc_13.R2 == "")?"":returnCardNameById(int(_loc_13.R2));
					_for3= (_loc_13.R3 == "")?"":returnCardNameById(int(_loc_13.R3));
					
					_ally=(_loc_13.Ally=="")?-1:int(_loc_13.Ally);
					_hp=(_loc_13.HP=="")?0:int(_loc_13.HP);
					_ap=(_loc_13.AP=="")?0:int(_loc_13.AP);
					_sp=int(_loc_13.@SP);
					
					//矢量就用SWF，位图用GIF
					_bigCardImage=imageSrcPrefix + String(_loc_13.Image)+".atf" ;
					
					
					_attackMode = int(_loc_13.@AttackMode);
                }
            /*for each (_loc_13 in ItemConfig.CARD_CONFIG.Card)
            {
                //根据配置文件设置此卡牌的其他数据
                if (_loc_13.@ID == String(_id))
                {
					//trace(_loc_13.toXMLString())
					//trace(_loc_13.@Name)
                    _name = _loc_13.@Name;
                    _description = _loc_13.@Description;
                    _class = _loc_13.@Class;
					_className = LocalConfig.LOCAL_LAN.Characters.CardClass.(@id == _class).@Text;
					_quality = _loc_13.@Quality;
					_star = _loc_13.@Star;
					
					_starCard= _loc_13.StarCard;
					_starRequiredGold= _loc_13.StarRequiredGold;
					_starRequiredHonor= _loc_13.StarRequiredHonor;
					
					_skills = new Vector.<SkillModel>;
					_skills = analysisSkillXML(_loc_13);
					_race = _loc_13.@Race;
					_talisman = (_loc_13.Talisman=="")?0:int(_loc_13.Talisman);
					_mitac = (_loc_13.Mitac == "")?0:int(_loc_13.Mitac);
					_for1= (_loc_13.R1 == "")?"":returnCardNameById(int(_loc_13.R1));
					_for2= (_loc_13.R2 == "")?"":returnCardNameById(int(_loc_13.R2));
					_for3= (_loc_13.R3 == "")?"":returnCardNameById(int(_loc_13.R3));
					
					_ally=(_loc_13.Ally=="")?-1:int(_loc_13.Ally);
					_hp=(_loc_13.HP=="")?0:int(_loc_13.HP);
					_ap=(_loc_13.AP=="")?0:int(_loc_13.AP);
					_sp=int(_loc_13.@SP);
					
					_attackMode = int(_loc_13.@AttackMode);
                    break;
                }
            }*/
			
			_loc_13 = null;
            return;
        }// end function

		/**
		 * 根据ＩＤ找到Ｘ
		 * @param	parma name
		 * @param	parma star
		 * @return
		 */
		/*private function getStarUpId(param1:String,param2:int):int {
			for each( var e:XML in ItemConfig.CARD_CONFIG.Card){
				if(e.@Name ==param1 && e.@Star==param2){
				return int(e.@ID);
				break;
				}
			}
			return -1;
			}*/
		 
		/**
		 * 根据卡ID返回卡的名称
		 * @param	value
		 * @return
		 */
		public static function returnCardNameById(parma:int):String {
			var temp:String = ItemConfig.CARD_CONFIG.Card.(@ID == String(parma)).@Name;
			trace("temp="+"_id//"+temp)
			return temp;
			}
		 
		//====================================================
		private function analysisSkillXML(value:XML):Vector.<SkillModel> {
			var temp:Vector.<SkillModel> = new Vector.<SkillModel>();
			if (value.Skill1!="") {
				var skill1:SkillModel = new SkillModel();
				skill1.id = value.Skill1;
				temp.push(skill1);
				skill1=null;
				}
			if (value.Skill2!="") {
				var skill2:SkillModel = new SkillModel();
				skill2.id = value.Skill2;
				temp.push(skill2);
				skill2=null;
				}
			if (value.Skill3!="") {
				var skill3:SkillModel = new SkillModel();
				skill3.id = value.Skill3;
				temp.push(skill3);
				skill3=null;
				}
			if (value.Skill4!="") {
				var skill4:SkillModel = new SkillModel();
				skill4.id = value.Skill4;
				temp.push(skill4);
				skill4=null;
				}
			value=null;
			return temp;
			}
		//====================================================
		public function get mitac() : int
		 {
		   return _mitac;
		}// end function
		
		public function set mitac(param1:int) : void
		{
		  _mitac= param1;
		  return;
		}// end function
		
		public function get talisman() : int
		 {
		   return _talisman;
		}// end function
		
		public function set talisman(param1:int) : void
		{
		  _talisman= param1;
		  return;
		}// end function
		
		public function get canUpgrade() : Boolean
		 {
		   return _canUpgrade;
		}// end function
		
		public function set canUpgrade(param1:Boolean) : void
		{
		  _canUpgrade= param1;
		  return;
		}// end function
		public function get oldNumber() : int
		 {
		   return _oldNumber;
		}// end function
		
		public function set oldNumber(param1:int) : void
		{
		  _oldNumber= param1;
		  return;
		}// end function
		public function get number() : int
		 {
		   return _number;
		}// end function
		
		public function set number(param1:int) : void
		{
		  _number= param1;
		  return;
		}// end function
		
		public function get canUse() : Boolean
		 {
			 if (_number == 0) {
				 _canUse = false;
				 }else {
						_canUse = true;
					 }
		   return _canUse;
		}// end function
		
		public function set canUse(param1:Boolean) : void
		{
		  _canUse= param1;
		  return;
		}// end function
		
		public function get smallCardImage() : String
		 {
		   return _smallCardImage;
		}// end function
		
		public function set smallCardImage(param1:String) : void
		{
		  _smallCardImage= param1;
		  return;
		}// end function
		
		public function get charactersImage() : String
		 {
		   return _charactersImage;
		}// end function
		
		public function set charactersImage(param1:String) : void
		{
		  _charactersImage= param1;
		  return;
		}// end function
		
		public function get bigCardImage() : String
		 {
		   return _bigCardImage;
		}// end function
		
		public function set bigCardImage(param1:String) : void
		{
		  _bigCardImage= param1;
		  return;
		}// end function
		
		public function get middleCardImage() : String
		 {
		   return _middleCardImage;
		}// end function
		
		public function set middleCardImage(param1:String) : void
		{
		  _middleCardImage= param1;
		  return;
		}// end function
		
		public function get imageUrl() : String
		 {
		   return _imageUrl;
		}// end function
		
		public function set imageUrl(param1:String) : void
		{
		  _imageUrl= param1;
		  return;
		}// end function
		
		public function get id() : int
		 {
		   return _id;
		}// end function
		
		public function set id(param1:int) : void
		{
		  _id= param1;
		  return;
		}// end function
		
		public function get description() : String
		 {
		   return _description;
		}// end function
		
		public function set description(param1:String) : void
		{
		  _description= param1;
		  return;
		}// end function
		
		public function get skills() : Vector.<SkillModel>
		 {
		   return _skills;
		}// end function
		
		public function set skills(param1:Vector.<SkillModel>) : void
		{
		  _skills= param1;
		  return;
		}// end function
		
		public function get maxStar() : int
		 {
		   return _maxStar;
		}// end function
		
		public function set maxStar(param1:int) : void
		{
		  _maxStar= param1;
		  return;
		}// end function
		
		public function get star() : int
		 {
		   return _star;
		}// end function
		
		public function set star(param1:int) : void
		{
		  _star= param1;
		  return;
		}// end function
		
		public function get quality() : int
		 {
		   return _quality;
		}// end function
		
		public function set quality(param1:int) : void
		{
		  _quality= param1;
		  return;
		}// end function
		
		public function get isLeader() : Boolean
		 {
			if (ally > 0) {
				_isLeader = true;
				}else { 
				_isLeader = false;
				}
		   return _isLeader;
		}// end function
		
		public function set isLeader(param1:Boolean) : void
		{
		  _isLeader= param1;
		  
		}// end function
		
		public function get race() : int
		 {
		   return _race;
		}// end function
		
		public function set race(param1:int) : void
		{
		  _race= param1;
		  return;
		}// end function
		
		public function get sp() : int
		 {
		   return _sp;
		}// end function
		
		public function set sp(param1:int) : void
		{
		  _sp= param1;
		  return;
		}// end function
		
		public function get ap() : int
		 {
		   return _ap;
		}// end function
		
		public function set ap(param1:int) : void
		{
		  _ap= param1;
		  return;
		}// end function
		
		public function get hp() : int
		 {
		   return _hp;
		}// end function
		
		public function set hp(param1:int) : void
		{
		  _hp= param1;
		  return;
		}// end function
		
		public function get ally() : int
		 {
		   return _ally;
		}// end function
		
		public function set ally(param1:int) : void
		{
		  _ally= param1;
		  return;
		}// end function
		
		
		public function get _Class() : int
		 {
		   return _class;
		}// end function
		
		public function set _Class(param1:int) : void
		{
		  _class= param1;
		  return;
		}// end function
		
		public function get className() : String
		 {
		   return _className;
		}// end function
		
		public function set className(param1:String) : void
		{
		  _className= param1;
		  return;
		}// end function
		public function get name() : String
		 {
		   return _name;
		}// end function
		
		public function set name(param1:String) : void
		{
		  _name= param1;
		  return;
		}// end function
		
		public function get imageSrcPrefix() : String
		 {
		   return _imageSrcPrefix;
		}// end function
		
		public function set imageSrcPrefix(param1:String) : void
		{
		  _imageSrcPrefix= param1;
		  return;
		}// end function
		
		public function get for1() : String
		 {
		   return _for1;
		}// end function
		
		public function set for1(param1:String) : void
		{
		  _for1= param1;
		  return;
		}// end function
		public function get for2() : String
		 {
		   return _for2;
		}// end function
		
		public function set for2(param1:String) : void
		{
		  _for2= param1;
		  return;
		}// end function
		
		public function get attackMode() : int
		 {
		   return _attackMode;
		}// end function
		
		public function set attackMode(param1:int) : void
		{
		  _attackMode= param1;
		  return;
		}// end function
		
		public function get for3() : String
		 {
		   return _for3;
		}// end function
		
		public function set for3(param1:String) : void
		{
		  _for3= param1;
		  return;
		}// end function
		
		public function get starCard():int 
		{
			return _starCard;
		}
		
		public function set starCard(value:int):void 
		{
			_starCard = value;
		}
		
		public function get starRequiredGold():int 
		{
			return _starRequiredGold;
		}
		
		public function set starRequiredGold(value:int):void 
		{
			_starRequiredGold = value;
		}
		
		public function get starRequiredHonor():int 
		{
			return _starRequiredHonor;
		}
		
		public function set starRequiredHonor(value:int):void 
		{
			_starRequiredHonor = value;
		}
		//获取提示文字信息
        /*public function getToolTipStr() : String
        {
            var _loc_1:String = String(LocalConfig.LOCAL_LAN.ItemToolTip.ItemTip.@Text).replace("{name}", this._name).replace("{description}", this._description);
            return _loc_1;
        }// end function

		//获取没有描述的提示文字信息
        public function getToolTipStrWithoutDescription() : String
        {
            var _loc_1:String = String(LocalConfig.LOCAL_LAN.ItemTipWithoutDes.ItemTip.@Text).replace("{name}", this._name);
            return _loc_1;
        }// end function*/


    }
}
