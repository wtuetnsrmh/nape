package project.model
{
	/*
	* 描述：转换从服务端获取的各XML信息到其他类型
	* 
	*/
    /*import __AS3__.vec.*;
    import project.config.*;
    import project.model.data.*;
    
    import project.model.item.*;
    
    
    import project.model.skill.*;
    
    import project.utils.*;
    import project.view.module.*;
    import mx.utils.*;*/

    public class ServerDataTranslator extends Object
    {

        public function ServerDataTranslator()
        {
            return;
        }// end function

        /*public static function translateBulletinData(param1:XML) : Array
        {
            var _loc_3:XML = null;
            var _loc_4:Object = null;
            var _loc_2:Array = [];
            for each (_loc_3 in param1.Notices.Notice)
            {
                
                _loc_4 = new Object();
                _loc_4.nId = _loc_3.Id;
                _loc_4.title = _loc_3.Title;
                _loc_4.content = "<b>" + _loc_3.Title + "</b><br/><br/>" + _loc_3.Content;
                _loc_4.time = _loc_3.Time;
                _loc_4.type = _loc_3.Type;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function hasSeceneRubish(param1:String) : int
        {
            var _loc_2:* = param1.substr(3, param1.length);
            var _loc_3:* = _loc_2.substr(0, 1);
            var _loc_4:* = _loc_2.substr((int(_loc_3) + 1), 1);
            return int(_loc_4);
        }// end function

        public static function translatePVEResultData(param1:XML) : Object
        {
            var xd:XML;
            var dd:XML;
            var pId:int;
            var value:int;
            var sName:String;
            var itemId:int;
            var category:int;
            var im:ItemModel;
            var oi:OfficerItem;
            var serverData:* = param1;
            var obj:* = new Object();
            var itemVector:* = new Vector.<ItemModel>;
            var officerArray:* = new Vector.<OfficerItem>;
            obj.item = itemVector;
            obj.officer = officerArray;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Bonus.Item;
            while (_loc_4 in _loc_3)
            {
                
                xd = _loc_4[_loc_3];
                pId = xd.@PropId;
                value = xd.@Amount;
                sName;
                if (pId < 0)
                {
                    if (pId == -1)
                    {
                        sName = LocalConfig.LOCAL_LAN.Characters.Exp.@Text;
                        obj.exp = value;
                    }
                    if (pId == -2)
                    {
                        sName = LocalConfig.LOCAL_LAN.Characters.Silver.@Text;
                        obj.silver = value;
                    }
                    continue;
                }
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == pId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                itemId = _loc_5.@Addon;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == pId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                category = _loc_5.@Type;
                if (category > 3)
                {
                    category;
                    itemId = pId;
                }
                im = ItemBuilder.createItem(category, itemId, 0, itemId);
                sName = im.name;
                im.number = value;
                itemVector.push(im);
            }
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Pets.Pet;
            while (_loc_4 in _loc_3)
            {
                
                dd = _loc_4[_loc_3];
                oi = ItemBuilder.createItem(ItemCategory.OFFICER, dd.@Id, dd.@Id) as OfficerItem;
                oi.maxHp = dd.@MHP;
                oi.currentHp = dd.@CHP;
                officerArray.push(oi);
            }
            return obj;
        }// end function

        public static function translateBudoukaiData(param1:XML) : Object
        {
            var _loc_5:XML = null;
            var _loc_6:XML = null;
            var _loc_7:Object = null;
            var _loc_2:* = new Object();
            var _loc_3:Array = [];
            var _loc_4:Array = [];
            for each (_loc_5 in param1.Fights.Fight)
            {
                
                _loc_3.push(_loc_5.@Id);
            }
            for each (_loc_6 in param1.UserInfos.UserInfo)
            {
                
                _loc_7 = new Object();
                _loc_7.opUId = _loc_6.User.UserId;
                _loc_7.nick = _loc_6.User.Name;
                _loc_7.level = _loc_6.UserDynamic.Level;
                _loc_7.hp = _loc_6.UserDynamic.HP;
                _loc_7.str = _loc_6.UserDynamic.Strength;
                _loc_7.dex = _loc_6.UserDynamic.Dexterity;
                _loc_7.spd = _loc_6.UserDynamic.Speed;
                _loc_7.job = _loc_6.UserDynamic.Job;
                if (String(_loc_6.User.Avatar).indexOf("http://img.kaixin001.com.cn/") > -1)
                {
                    _loc_7.avatar = ModelLocator.getInstance().staticURL + "game/" + ApplicationConfig.VERSION + "/assets/images/kx_men.gif";
                }
                else
                {
                    _loc_7.avatar = _loc_6.User.Avatar;
                }
                _loc_4.push(_loc_7);
            }
            _loc_2.fightInfo = _loc_3;
            _loc_2.userInfo = _loc_4;
            return _loc_2;
        }// end function

        public static function translateChampionCupData(param1:XML) : Array
        {
            var _loc_3:XML = null;
            var _loc_4:Object = null;
            var _loc_2:Array = [];
            for each (_loc_3 in param1.Arenas.mArena)
            {
                
                _loc_4 = new Object();
                _loc_4.cId = _loc_3.Id;
                _loc_4.tips = _loc_3.Tips;
                _loc_4.minLevel = _loc_3.MinLevel;
                _loc_4.maxLevel = _loc_3.MaxLevel;
                _loc_4.type = _loc_3.Gold > 0 ? (1) : (0);
                _loc_4.fee = _loc_3.Gold > 0 ? (_loc_3.Gold) : (_loc_3.Silver);
                _loc_4.uId = _loc_3.MasterId;
                _loc_4.prize = _loc_3.BonusPool;
                _loc_4.nick = _loc_3.MasterNickname;
                if (String(_loc_3.PicSrc).indexOf("http://img.kaixin001.com.cn/") > -1)
                {
                    _loc_4.avatar = ModelLocator.getInstance().staticURL + "game/" + ApplicationConfig.VERSION + "/assets/images/kx_men.gif";
                }
                else
                {
                    _loc_4.avatar = _loc_3.PicSrc;
                }
                _loc_4.hp = _loc_3.MasterHP;
                _loc_4.str = _loc_3.MasterStr;
                _loc_4.dex = _loc_3.MasterDex;
                _loc_4.spd = _loc_3.MasterSpeed;
                _loc_4.job = _loc_3.MasterJob;
                _loc_4.jobText = ModelLocator.getInstance().getJobStr(int(_loc_3.MasterJob));
                _loc_4.level = _loc_3.MasterLevel;
                _loc_4.winNum = _loc_3.WinCounter;
                _loc_4.tips = _loc_3.Tips;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translateAchievementsData(param1:XML) : Array
        {
            var _loc_8:XML = null;
            var _loc_9:Object = null;
            var _loc_10:String = null;
            var _loc_11:XML = null;
            var _loc_12:XML = null;
            var _loc_13:ItemModel = null;
            var _loc_2:Array = [];
            var _loc_3:Array = [];
            var _loc_4:Array = [];
            var _loc_5:Array = [];
            var _loc_6:Array = [];
            var _loc_7:Array = [];
            for each (_loc_8 in param1.UserAchievements.UserAchievement)
            {
                
                _loc_9 = new Object();
                _loc_10 = "";
                for each (_loc_11 in ItemConfig.ACHIEVETMENTS_CONFIG.Achievement)
                {
                    
                    if (_loc_11.@Id == _loc_8.@AchievementId)
                    {
                        _loc_9.acName = _loc_11.@Name;
                        _loc_9.acInfo = _loc_11.@Info;
                        _loc_9.totalStar = _loc_11.@Total;
                        _loc_9.isRepeatable = _loc_11.@Repeatable;
                        _loc_9.process = _loc_11.@Sort;
                        _loc_9.total = _loc_11.@Limen;
                        _loc_9.type = _loc_11.@Category;
                        _loc_9.aId = _loc_8.@AchievementId;
                        _loc_9.done = _loc_8.@Amount;
                        _loc_9.finished = _loc_8.@Finished;
                        _loc_9.currentStar = int(_loc_11.@Sort) + int(_loc_9.finished) - 1;
                        if (_loc_11.@Silver > 0)
                        {
                            _loc_10 = _loc_10 + (LocalConfig.LOCAL_LAN.Characters.Silver.@Text + "×" + _loc_11.@Silver + " ");
                        }
                        if (_loc_11.@Experience > 0)
                        {
                            _loc_10 = _loc_10 + (LocalConfig.LOCAL_LAN.Characters.Exp.@Text + "×" + _loc_11.@Experience + " ");
                        }
                        if (_loc_11.Prize)
                        {
                            _loc_10 = _loc_10 + "";
                            for each (_loc_12 in _loc_11.Prize)
                            {
                                
                                if (int(_loc_12.@PropId) > 0)
                                {
                                    _loc_13 = ItemBuilder.createItem(ItemCategory.ITEM, _loc_12.@PropId, 0, _loc_12.@PropId);
                                    _loc_10 = _loc_10 + (_loc_13.name + "×" + _loc_12.@Amount + " ");
                                }
                            }
                        }
                    }
                }
                if (_loc_9.isRepeatable == 1)
                {
                    _loc_9.totalStar = 0;
                }
                switch(int(_loc_9.type))
                {
                    case 1:
                    {
                        _loc_3.push(_loc_9);
                        break;
                    }
                    case 2:
                    {
                        _loc_4.push(_loc_9);
                        break;
                    }
                    case 3:
                    {
                        _loc_5.push(_loc_9);
                        break;
                    }
                    case 4:
                    {
                        _loc_6.push(_loc_9);
                        break;
                    }
                    case 5:
                    {
                        _loc_7.push(_loc_9);
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                _loc_9.prizeStr = _loc_10;
            }
            _loc_2.push(_loc_3);
            _loc_2.push(_loc_4);
            _loc_2.push(_loc_5);
            _loc_2.push(_loc_6);
            _loc_2.push(_loc_7);
            return _loc_2;
        }// end function

        public static function translateRankData(param1:XML, param2:Boolean) : Array
        {
            var _loc_4:XML = null;
            var _loc_5:Object = null;
            var _loc_6:XML = null;
            var _loc_3:Array = [];
            for each (_loc_4 in param1.Ranks.Rank)
            {
                
                _loc_5 = new Object();
                _loc_5.totalPage = param1.Ranks.@TotalPage;
                _loc_5.currentPage = param1.Ranks.@Page;
                _loc_5.uId = _loc_4.@UserId;
                _loc_5.index = _loc_4.@Index;
                _loc_5.value = _loc_4.@Value;
                _loc_5.past = _loc_4.@Past;
                _loc_5.nick = _loc_4.@Name;
                _loc_5.affSilver = _loc_4.@Silver;
                _loc_5.affGold = _loc_4.@Gold;
                _loc_5.level = _loc_4.@Level;
                if (param2)
                {
                    for each (_loc_6 in ItemConfig.BR_HONOR_CONFIG.HonorLevel)
                    {
                        
                        if (int(_loc_4.@Value) >= _loc_6.@Honor && int(_loc_4.@Value) < _loc_6.@NextHonor)
                        {
                            _loc_5.title = _loc_6.@Title;
                            break;
                        }
                    }
                }
                _loc_3.push(_loc_5);
            }
            return _loc_3;
        }// end function

        public static function translateFavoriteBoxData(param1:XML) : Array
        {
            var _loc_3:XML = null;
            var _loc_4:Object = null;
            var _loc_2:Array = [];
            FavoriteData.getInstance().capacity = param1.Favorites.@Amount;
            for each (_loc_3 in param1.Favorites.Favorite)
            {
                
                _loc_4 = new Object();
                _loc_4.bId = _loc_3.@Id;
                _loc_4.uId = _loc_3.@Challengee;
                _loc_4.opUId = _loc_3.@Challenger;
                _loc_4.nick = _loc_3.@ChallengeeName;
                _loc_4.type = _loc_3.@Type;
                _loc_4.opNick = _loc_3.@ChallengerName;
                _loc_4.timeScope = _loc_3.@Time;
                _loc_4.result = _loc_3.@Result;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translateShopData(param1:XML) : Vector.<ItemModel>
        {
            var _loc_3:XML = null;
            var _loc_4:ItemModel = null;
            var _loc_2:* = new Vector.<ItemModel>;
            for each (_loc_3 in param1.Offers.Offer)
            {
                
                _loc_4 = ItemBuilder.createItem(ItemCategory.ITEM, _loc_3.@PropId, 0, _loc_3.@PropId);
                if (ModelLocator.getInstance().isQQRelated())
                {
                    _loc_4.itemId = _loc_3.@PropId;
                    _loc_4.sId = _loc_3.@Id;
                    _loc_4.shopPrice = _loc_3.@QPoint;
                    _loc_4.shopPriceRMB = _loc_3.@QPoint;
                    _loc_4.type = _loc_3.@Type;
                    _loc_4.onSale = _loc_3.@IsHot;
                    _loc_4.discout = _loc_3.@Sale;
                    _loc_4.typeOrder = _loc_3.@TypeOrder;
                    _loc_4.hotOrder = _loc_3.@HotOrder;
                }
                else
                {
                    _loc_4.itemId = _loc_3.@PropId;
                    _loc_4.sId = _loc_3.@Id;
                    _loc_4.shopPrice = _loc_3.@Silver;
                    _loc_4.shopPriceRMB = _loc_3.@Gold;
                    _loc_4.type = _loc_3.@Type;
                    _loc_4.onSale = _loc_3.@Status;
                    _loc_4.discout = _loc_3.@Sale;
                }
                if (_loc_3.@VipSale > 0)
                {
                    _loc_4.shopDiscountRMB = _loc_3.@VipSale;
                }
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translatePlayerData(param1:XML) : Object
        {
            var _loc_2:* = new Object();
            return _loc_2;
        }// end function

        public static function translateFriendData(param1:XML) : Array
        {
            var _loc_3:XML = null;
            var _loc_4:Object = null;
            var _loc_2:Array = [];
            for each (_loc_3 in param1.Friends.Friend)
            {
                
                _loc_4 = new Object();
                _loc_4.uId = _loc_3.@UserId;
                _loc_4.nick = _loc_3.@Name;
                _loc_4.pvf = _loc_3.@PVFable;
                _loc_4.vip = _loc_3.@VIP;
                _loc_4.snsvip = _loc_3.@SNSVip;
                if (String(_loc_3.@Head).indexOf("http://img.kaixin001.com.cn/") > -1)
                {
                    _loc_4.avatar = ModelLocator.getInstance().staticURL + "game/" + ApplicationConfig.VERSION + "/assets/images/kx_men.gif";
                }
                else
                {
                    _loc_4.avatar = String(_loc_3.@Head);
                }
                _loc_4.canTease = _loc_3.@Teasable;
                _loc_4.level = _loc_3.@Level;
                _loc_4.affGold = _loc_3.@Gold;
                _loc_4.affSilver = _loc_3.@Silver;
                _loc_4.expPercent = _loc_3.@ExperiencePercent;
                _loc_4.totalPage = param1.Friends.@TotalPage;
                _loc_4.currentPage = param1.Friends.@Page;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translateJewelryData(param1:XML) : Vector.<ItemModel>
        {
            var _loc_3:XML = null;
            var _loc_4:ItemModel = null;
            var _loc_2:* = new Vector.<ItemModel>;
            for each (_loc_3 in param1.Jewelrys.Jewelry)
            {
                
                _loc_4 = ItemBuilder.createItem(ItemCategory.JEWELRY, _loc_3.@JewelryId, _loc_3.@Id, _loc_3.Effects.Effect);
                _loc_4.quality = _loc_3.@Quality;
                (_loc_4 as JewelryItem).isIdentified = _loc_3.@Identified == 1;
                (_loc_4 as JewelryItem).isEquiped = _loc_3.@Equiped;
                (_loc_4 as JewelryItem).setId = _loc_3.@SetId;
                (_loc_4 as JewelryItem).setAmount = _loc_3.@SetAmount;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translateSuitData(param1:XML) : Vector.<ItemModel>
        {
            var _loc_3:XML = null;
            var _loc_4:ItemModel = null;
            var _loc_2:* = new Vector.<ItemModel>;
            for each (_loc_3 in param1.Avatars.UserAvatar)
            {
                
                _loc_4 = ItemBuilder.createItem(ItemCategory.SUIT, _loc_3.@AvatarId, _loc_3.@Id);
                (_loc_4 as SuitItem).isEquiped = _loc_3.@Equiped;
                (_loc_4 as SuitItem).expireTime = _loc_3.@Expire;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translateBagData(param1:XML) : Vector.<ItemModel>
        {
            var xmlData:XML;
            var tipsId:int;
            var itemId:int;
            var category:int;
            var im:ItemModel;
            var serverData:* = param1;
            var vc:* = new Vector.<ItemModel>;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.UserPackages.UserPackage;
            while (_loc_4 in _loc_3)
            {
                
                xmlData = _loc_4[_loc_3];
                tipsId = xmlData.@ItemId;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == xmlData.@ItemId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                itemId = _loc_5.@Addon;
                category = xmlData.@ItemType;
                if (category > 3)
                {
                    category;
                    itemId = xmlData.@ItemId;
                }
                im = ItemBuilder.createItem(category, itemId, 0, xmlData.@ItemId);
                im.tipsId = tipsId;
                im.price = (im.level + 1) * 5;
                im.sId = xmlData.@Id;
                im.itemId = xmlData.@ItemId;
                im.number = xmlData.@Amount;
                im.canUpgrade = xmlData.@Upgradable;
                im.showUpgrade = xmlData.@CanUpgrade;
                im.canUse = xmlData.@Usable;
                if (im.itemId == PropConfig.OFFICER_EXP_PLUS || im.itemId == PropConfig.OFFICER_HP_PLUS)
                {
                    im.canUse = 1;
                }
                im.fromUI = UIConfig.ITEM_BAG_PANE;
                vc.push(im);
            }
            return vc;
        }// end function

        public static function checkItemInBag(param1:ItemModel) : Boolean
        {
            var _loc_2:ItemModel = null;
            if (BagData.getInstance().itemData.length <= 0)
            {
                return false;
            }
            for each (_loc_2 in BagData.getInstance().itemData)
            {
                
                if (_loc_2.cardId == param1.cardId)
                {
                    return true;
                }
            }
            return false;
        }// end function

        public static function translateSkillData(param1:XML) : Vector.<SkillItem>
        {
            var _loc_3:XML = null;
            var _loc_4:ItemModel = null;
            var _loc_2:* = new Vector.<SkillItem>;
            for each (_loc_3 in param1.Skills.Skill)
            {
                
                _loc_4 = ItemBuilder.createItem(ItemCategory.SKILL, _loc_3.@SkillId);
                (_loc_4 as SkillItem).canUpgrade = _loc_3.@Upgradable;
                (_loc_4 as SkillItem).canUse = _loc_3.@Usable;
                (_loc_4 as SkillItem).sId = _loc_3.@Id;
                _loc_4.fromUI = UIConfig.SKILL_SCENE;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function

        public static function translateWeaponData(param1:XML) : Vector.<EquipItem>
        {
            var xmlData:XML;
            var im:ItemModel;
            var i:int;
            var effect:XML;
            var eId:int;
            var tempStr:String;
            var xmlNode:XML;
            var serverData:* = param1;
            var vc:* = new Vector.<EquipItem>;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Weapons.Weapon;
            while (_loc_4 in _loc_3)
            {
                
                xmlData = _loc_4[_loc_3];
                im = ItemBuilder.createItem(ItemCategory.WEAPON, xmlData.@WeaponId);
                im.sId = xmlData.@Id;
                (im as EquipItem).canUpgrade = xmlData.@Upgradable;
                (im as EquipItem).canUse = xmlData.@Usable;
                (im as EquipItem).quality = xmlData.@Quality;
                (im as EquipItem).isEquiped = xmlData.@Equiped;
                (im as EquipItem).mosaicNum = xmlData.@Hole;
                im.price = (im.level + 1) * 5;
                im.fromUI = UIConfig.WEAPON_SCENE;
                i;
                var _loc_5:int = 0;
                var _loc_6:* = xmlData.Effects.Effect;
                while (_loc_6 in _loc_5)
                {
                    
                    effect = _loc_6[_loc_5];
                    eId = effect.@Id;
                    var _loc_8:int = 0;
                    var _loc_9:* = ItemConfig.ITEM_EFFECT.Effect;
                    var _loc_7:* = new XMLList("");
                    for each (_loc_10 in _loc_9)
                    {
                        
                        var _loc_11:* = _loc_9[_loc_8];
                        with (_loc_9[_loc_8])
                        {
                            if (@Id == eId)
                            {
                                _loc_7[_loc_8] = _loc_10;
                            }
                        }
                    }
                    tempStr = _loc_7.@Name;
                    if (StringUtil.trim(tempStr) != "")
                    {
                        if (effect.@Type < 2)
                        {
                            if (effect.@Value < 1)
                            {
                                tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                            }
                            else
                            {
                                tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                            }
                            if (i < 1)
                            {
                                var _loc_7:int = 0;
                                var _loc_8:* = ItemConfig.WEAPON_CONFIG.Weapon;
                                while (_loc_8 in _loc_7)
                                {
                                    
                                    xmlNode = _loc_8[_loc_7];
                                    if (xmlNode.@Id == xmlData.@WeaponId)
                                    {
                                        (im as EquipItem).baseEffect = xmlNode.@Info;
                                    }
                                }
                            }
                            else
                            {
                                (im as EquipItem).effect = (im as EquipItem).effect + (tempStr + "<br/>");
                            }
                            i = (i + 1);
                            continue;
                        }
                        if (effect.@Value < 1)
                        {
                            tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                        }
                        else
                        {
                            tempStr = tempStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                        }
                        (im as EquipItem).mosaic[int(effect.@Position)] = effect.@StoneId;
                        (im as EquipItem).mosaicEffect[int(effect.@Position)] = tempStr;
                        (im as EquipItem).mosaicValue[int(effect.@Position)] = effect.@Value;
                    }
                }
                vc.push(im);
            }
            return vc;
        }// end function

        public static function translateLotteryData(param1:XML) : Vector.<ItemModel>
        {
            var xmlData:XML;
            var itemId:int;
            var category:int;
            var tipsId:int;
            var im:ItemModel;
            var serverData:* = param1;
            var vc:* = new Vector.<ItemModel>;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Lotterys.Item;
            while (_loc_4 in _loc_3)
            {
                
                xmlData = _loc_4[_loc_3];
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == xmlData.@PropId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                itemId = _loc_5.@Addon;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == xmlData.@PropId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                category = _loc_5.@Type;
                tipsId = xmlData.@ItemId;
                if (category > 3)
                {
                    category;
                    itemId = xmlData.@PropId;
                }
                if (xmlData.@PropId == 0)
                {
                    category;
                }
                im = ItemBuilder.createItem(category, itemId, 0, itemId);
                im.tipsId = tipsId;
                im.fromUI = UIConfig.LOTTERY_PANE;
                im.fixed = xmlData.@Fixed == 1;
                vc.push(im);
            }
            return vc;
        }// end function

        public static function translateDiceLotteryData(param1:XML) : Vector.<ItemModel>
        {
            var _loc_4:XML = null;
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_7:ItemModel = null;
            var _loc_2:* = new Vector.<ItemModel>;
            var _loc_3:* = param1.Lotterys.@Location;
            for each (_loc_4 in param1.Lotterys.Item)
            {
                
                _loc_5 = _loc_4.@Type;
                _loc_6 = int(_loc_4);
                _loc_7 = ItemBuilder.createItem(_loc_5, _loc_6);
                _loc_7.fromUI = UIConfig.LOTTERY_PANE;
                _loc_2.push(_loc_7);
            }
            return _loc_2;
        }// end function

        public static function translateTeaseUsealbeOfficer(param1:XML) : Vector.<OfficerItem>
        {
            var xmlData:XML;
            var im:ItemModel;
            var serverData:* = param1;
            var vc:* = new Vector.<OfficerItem>;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Pets.Pet;
            while (_loc_4 in _loc_3)
            {
                
                xmlData = _loc_4[_loc_3];
                im = ItemBuilder.createItem(ItemCategory.OFFICER, xmlData.@PetId);
                (im as OfficerItem).weaponId = xmlData.@WeaponId;
                (im as OfficerItem).skillId = xmlData.@SkillId;
                (im as OfficerItem).canUpgrade = xmlData.@Upgradable;
                (im as OfficerItem).canUse = xmlData.@Usable;
                (im as OfficerItem).tease = xmlData.Tease.@Status;
                (im as OfficerItem).teaseTime = xmlData.Tease.@Time;
                (im as OfficerItem).exp = xmlData.@Exp;
                (im as OfficerItem).expMax = xmlData.@ExpFull;
                (im as OfficerItem).expRatio = xmlData.@ExpPercent;
                (im as OfficerItem).isEquiped = xmlData.@Equiped;
                (im as OfficerItem).sId = xmlData.@Id;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.WEAPON_CONFIG.Weapon;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == (im as OfficerItem).weaponId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                (im as OfficerItem).weapon = _loc_5.@Name;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.WEAPON_CONFIG.Weapon;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == xmlData.@WeaponId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.WEAPON_CONFIG.Weapon;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == xmlData.@WeaponId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                (im as OfficerItem).damage = _loc_5.@MinDamage + "～" + _loc_5.@MaxDamage;
                var _loc_6:int = 0;
                var _loc_7:* = ItemConfig.SKILL_ITEM.Skill;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == (im as OfficerItem).weaponId)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                (im as OfficerItem).skill = _loc_5.@Name;
                im.fromUI = UIConfig.OFFICER_SCENE;
                vc.push(im);
            }
            return vc;
        }// end function

        public static function translateOfficerData(param1:XML) : Vector.<OfficerItem>
        {
            var xmlData:XML;
            var im:ItemModel;
            var serverData:* = param1;
            if (serverData.hasOwnProperty("Anti"))
            {
                PlayerData.getInstance().teaseAuth = serverData.Anti;
            }
            var vc:* = new Vector.<OfficerItem>;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Pets.Pet;
            while (_loc_4 in _loc_3)
            {
                
                xmlData = _loc_4[_loc_3];
                im = ItemBuilder.createItem(ItemCategory.OFFICER, xmlData.@PetId);
                (im as OfficerItem).weaponId = xmlData.@WeaponId;
                (im as OfficerItem).skillId = xmlData.@SkillId;
                (im as OfficerItem).canUpgrade = xmlData.@Upgradable;
                (im as OfficerItem).canUse = xmlData.@Usable;
                (im as OfficerItem).tease = xmlData.Tease.@Status;
                (im as OfficerItem).teaseTime = xmlData.Tease.@Time;
                (im as OfficerItem).exp = xmlData.@Exp;
                (im as OfficerItem).expMax = xmlData.@ExpFull;
                (im as OfficerItem).expRatio = xmlData.@ExpPercent;
                (im as OfficerItem).isEquiped = xmlData.@Equiped;
                (im as OfficerItem).sId = xmlData.@Id;
                var _loc_6:int = 0;
                var _loc_7:* = xmlData.Effects.Effect;
                var _loc_5:* = new XMLList("");
                for each (_loc_8 in _loc_7)
                {
                    
                    var _loc_9:* = _loc_7[_loc_6];
                    with (_loc_7[_loc_6])
                    {
                        if (@Id == 37)
                        {
                            _loc_5[_loc_6] = _loc_8;
                        }
                    }
                }
                (im as OfficerItem).extrHp = int(_loc_5.@Value);
                im.fromUI = UIConfig.OFFICER_SCENE;
                vc.push(im);
            }
            return vc;
        }// end function

        public static function translateUpgradeData(param1:XML) : Vector.<ItemModel>
        {
            var fromItem:ItemModel;
            var toItem:ItemModel;
            var i:int;
            var j:int;
            var effect:XML;
            var eId:int;
            var fromStr:String;
            var xmlNode:XML;
            var toEffect:XML;
            var e2Id:int;
            var toStr:String;
            var xmlNodes:XML;
            var serverData:* = param1;
            var vc:* = new Vector.<ItemModel>;
            var type:* = serverData.Upgrade.Now.@Type;
            switch(type)
            {
                case ItemCategory.OFFICER:
                {
                    fromItem = ItemBuilder.createItem(ItemCategory.OFFICER, serverData.Upgrade.Now.Pet.@PetId);
                    toItem = ItemBuilder.createItem(ItemCategory.OFFICER, serverData.Upgrade.Get.Pet.@PetId);
                    fromItem.sId = serverData.Upgrade.Now.Pet.@PetId;
                    fromItem.itemId = serverData.Upgrade.Now.Pet.@PetId;
                    (fromItem as OfficerItem).weaponId = serverData.Upgrade.Now.Pet.@WeaponId;
                    (toItem as OfficerItem).weaponId = serverData.Upgrade.Get.Pet.@WeaponId;
                    (fromItem as OfficerItem).weaponId = serverData.Upgrade.Now.Pet.@WeaponId;
                    (fromItem as OfficerItem).skillId = serverData.Upgrade.Now.Pet.@SkillId;
                    (fromItem as OfficerItem).sId = serverData.Upgrade.Now.Pet.@Id;
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.WEAPON_CONFIG.Weapon;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == (fromItem as OfficerItem).weaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    (fromItem as OfficerItem).weapon = _loc_3.@Name;
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.WEAPON_CONFIG.Weapon;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == serverData.Upgrade.Now.Pet.@WeaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.WEAPON_CONFIG.Weapon;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == serverData.Upgrade.Now.Pet.@WeaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    (fromItem as OfficerItem).damage = _loc_3.@MinDamage + "～" + _loc_3.@MaxDamage;
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.SKILL_ITEM.Skill;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == (fromItem as OfficerItem).weaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    (fromItem as OfficerItem).skill = _loc_3.@Name;
                    (toItem as OfficerItem).weaponId = serverData.Upgrade.Get.Pet.@WeaponId;
                    (toItem as OfficerItem).skillId = serverData.Upgrade.Get.Pet.@SkillId;
                    (toItem as OfficerItem).sId = serverData.Upgrade.Get.Pet.@Id;
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.WEAPON_CONFIG.Weapon;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == (toItem as OfficerItem).weaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    (toItem as OfficerItem).weapon = _loc_3.@Name;
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.WEAPON_CONFIG.Weapon;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == serverData.Upgrade.Get.Pet.@WeaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.WEAPON_CONFIG.Weapon;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == serverData.Upgrade.Get.Pet.@WeaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    (toItem as OfficerItem).damage = _loc_3.@MinDamage + "～" + _loc_3.@MaxDamage;
                    var _loc_4:int = 0;
                    var _loc_5:* = ItemConfig.SKILL_ITEM.Skill;
                    var _loc_3:* = new XMLList("");
                    for each (_loc_6 in _loc_5)
                    {
                        
                        var _loc_7:* = _loc_5[_loc_4];
                        with (_loc_5[_loc_4])
                        {
                            if (@Id == (toItem as OfficerItem).weaponId)
                            {
                                _loc_3[_loc_4] = _loc_6;
                            }
                        }
                    }
                    (toItem as OfficerItem).skill = _loc_3.@Name;
                    break;
                }
                case ItemCategory.SKILL:
                {
                    fromItem = ItemBuilder.createItem(ItemCategory.SKILL, serverData.Upgrade.Now.Skill.@SkillId);
                    toItem = ItemBuilder.createItem(ItemCategory.SKILL, serverData.Upgrade.Get.Skill.@SkillId);
                    fromItem.sId = serverData.Upgrade.Now.Skill.@SkillId;
                    fromItem.itemId = serverData.Upgrade.Now.Skill.@SkillId;
                    break;
                }
                case ItemCategory.WEAPON:
                {
                    fromItem = ItemBuilder.createItem(ItemCategory.WEAPON, serverData.Upgrade.Now.Weapon.@WeaponId);
                    fromItem.quality = serverData.Upgrade.Now.Weapon.@Quality;
                    toItem = ItemBuilder.createItem(ItemCategory.WEAPON, serverData.Upgrade.Get.Weapon.@WeaponId);
                    toItem.quality = serverData.Upgrade.Now.Weapon.@Quality;
                    fromItem.sId = serverData.Upgrade.Now.Weapon.@Id;
                    fromItem.itemId = serverData.Upgrade.Now.Weapon.@WeaponId;
                    (toItem as EquipItem).mosaicNum = serverData.Upgrade.Get.Weapon.@Hole;
                    (fromItem as EquipItem).mosaicNum = serverData.Upgrade.Now.Weapon.@Hole;
                    i;
                    var _loc_3:int = 0;
                    var _loc_4:* = serverData.Upgrade.Now.Weapon.Effects.Effect;
                    while (_loc_4 in _loc_3)
                    {
                        
                        effect = _loc_4[_loc_3];
                        eId = effect.@Id;
                        var _loc_6:int = 0;
                        var _loc_7:* = ItemConfig.ITEM_EFFECT.Effect;
                        var _loc_5:* = new XMLList("");
                        for each (_loc_8 in _loc_7)
                        {
                            
                            var _loc_9:* = _loc_7[_loc_6];
                            with (_loc_7[_loc_6])
                            {
                                if (@Id == effect.@Id)
                                {
                                    _loc_5[_loc_6] = _loc_8;
                                }
                            }
                        }
                        fromStr = _loc_5.@Name;
                        if (StringUtil.trim(fromStr) != "")
                        {
                            if (effect.@Type < 2)
                            {
                                if (effect.@Value < 1)
                                {
                                    fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                                }
                                else
                                {
                                    fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                                }
                                if (i < 1)
                                {
                                    var _loc_5:int = 0;
                                    var _loc_6:* = ItemConfig.WEAPON_CONFIG.Weapon;
                                    while (_loc_6 in _loc_5)
                                    {
                                        
                                        xmlNode = _loc_6[_loc_5];
                                        if (xmlNode.@Id == serverData.Upgrade.Now.Weapon.@WeaponId)
                                        {
                                            (fromItem as EquipItem).baseEffect = xmlNode.@Info;
                                        }
                                    }
                                }
                                else
                                {
                                    (fromItem as EquipItem).effect = (fromItem as EquipItem).effect + (fromStr + "<br/>");
                                }
                                i = (i + 1);
                                continue;
                            }
                            if (effect.@Value < 1)
                            {
                                fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                            }
                            else
                            {
                                fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                            }
                            (fromItem as EquipItem).mosaic[int(effect.@Position)] = effect.@StoneId;
                            (fromItem as EquipItem).mosaicEffect[int(effect.@Position)] = fromStr;
                            (fromItem as EquipItem).mosaicValue[int(effect.@Position)] = effect.@Value;
                        }
                    }
                    j;
                    var _loc_3:int = 0;
                    var _loc_4:* = serverData.Upgrade.Get.Weapon.Effects.Effect;
                    while (_loc_4 in _loc_3)
                    {
                        
                        toEffect = _loc_4[_loc_3];
                        e2Id = toEffect.@Id;
                        var _loc_6:int = 0;
                        var _loc_7:* = ItemConfig.ITEM_EFFECT.Effect;
                        var _loc_5:* = new XMLList("");
                        for each (_loc_8 in _loc_7)
                        {
                            
                            var _loc_9:* = _loc_7[_loc_6];
                            with (_loc_7[_loc_6])
                            {
                                if (@Id == e2Id)
                                {
                                    _loc_5[_loc_6] = _loc_8;
                                }
                            }
                        }
                        toStr = _loc_5.@Name;
                        if (StringUtil.trim(toStr) != "")
                        {
                            if (toEffect.@Type < 2)
                            {
                                if (toEffect.@Value < 1)
                                {
                                    toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(toEffect.@Value * 100, 1) + "%"));
                                }
                                else
                                {
                                    toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value, 1)) : ("+" + XMath.formatNumber(toEffect.@Value, 1)));
                                }
                                if (j < 1)
                                {
                                    var _loc_5:int = 0;
                                    var _loc_6:* = ItemConfig.WEAPON_CONFIG.Weapon;
                                    while (_loc_6 in _loc_5)
                                    {
                                        
                                        xmlNodes = _loc_6[_loc_5];
                                        if (xmlNodes.@Id == serverData.Upgrade.Get.Weapon.@WeaponId)
                                        {
                                            (toItem as EquipItem).baseEffect = xmlNodes.@Info;
                                        }
                                    }
                                }
                                else
                                {
                                    (toItem as EquipItem).effect = (toItem as EquipItem).effect + (toStr + "<br/>");
                                }
                                j = (j + 1);
                                continue;
                            }
                            if (toEffect.@Value < 1)
                            {
                                toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(toEffect.@Value * 100, 1) + "%"));
                            }
                            else
                            {
                                toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value, 1)) : ("+" + XMath.formatNumber(toEffect.@Value, 1)));
                            }
                            (toItem as EquipItem).mosaic[int(toEffect.@Position)] = toEffect.@StoneId;
                            (toItem as EquipItem).mosaicEffect[int(toEffect.@Position)] = toStr;
                            (toItem as EquipItem).mosaicValue[int(toEffect.@Position)] = toEffect.@Value;
                        }
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            fromItem.fromUI = UIConfig.UPGRADE_PANE;
            toItem.fromUI = UIConfig.UPGRADE_PANE;
            vc.push(fromItem);
            vc.push(toItem);
            return vc;
        }// end function

        public static function translateBagWeaponInfoData(param1:XML) : Array
        {
            var xmlData:XML;
            var vc:Vector.<ItemModel>;
            var fromItem:ItemModel;
            var toItem:ItemModel;
            var type:int;
            var i:int;
            var effect:XML;
            var j:int;
            var toEffect:XML;
            var wData:Object;
            var eId:int;
            var fromStr:String;
            var xmlNode:XML;
            var e2Id:int;
            var toStr:String;
            var xmlNodes:XML;
            var serverData:* = param1;
            var arr:Array;
            var _loc_3:int = 0;
            var _loc_4:* = serverData.Actions.Action.Upgrades.Upgrade;
            while (_loc_4 in _loc_3)
            {
                
                xmlData = _loc_4[_loc_3];
                vc = new Vector.<ItemModel>;
                type = xmlData.@Type;
                fromItem = ItemBuilder.createItem(ItemCategory.WEAPON, xmlData.Now.Weapon.@WeaponId);
                toItem = ItemBuilder.createItem(ItemCategory.WEAPON, xmlData.Get.Weapon.@WeaponId);
                fromItem.quality = xmlData.Now.Weapon.@Quality;
                toItem.quality = xmlData.Now.Weapon.@Quality;
                fromItem.sId = xmlData.Now.Weapon.@Id;
                fromItem.itemId = xmlData.Now.Weapon.@WeaponId;
                (toItem as EquipItem).mosaicNum = serverData.Upgrade.Get.Weapon.@Hole;
                (fromItem as EquipItem).mosaicNum = serverData.Upgrade.Now.Weapon.@Hole;
                i;
                var _loc_5:int = 0;
                var _loc_6:* = xmlData.Now.Weapon.Effects.Effect;
                while (_loc_6 in _loc_5)
                {
                    
                    effect = _loc_6[_loc_5];
                    eId = effect.@Id;
                    var _loc_8:int = 0;
                    var _loc_9:* = ItemConfig.ITEM_EFFECT.Effect;
                    var _loc_7:* = new XMLList("");
                    for each (_loc_10 in _loc_9)
                    {
                        
                        var _loc_11:* = _loc_9[_loc_8];
                        with (_loc_9[_loc_8])
                        {
                            if (@Id == effect.@Id)
                            {
                                _loc_7[_loc_8] = _loc_10;
                            }
                        }
                    }
                    fromStr = _loc_7.@Name;
                    if (StringUtil.trim(fromStr) != "")
                    {
                        if (effect.@Type < 2)
                        {
                            if (effect.@Value < 1)
                            {
                                fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                            }
                            else
                            {
                                fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                            }
                            if (i < 1)
                            {
                                var _loc_7:int = 0;
                                var _loc_8:* = ItemConfig.WEAPON_CONFIG.Weapon;
                                while (_loc_8 in _loc_7)
                                {
                                    
                                    xmlNode = _loc_8[_loc_7];
                                    if (xmlNode.@Id == xmlData.Now.Weapon.@WeaponId)
                                    {
                                        (fromItem as EquipItem).baseEffect = xmlNode.@Info;
                                    }
                                }
                            }
                            else
                            {
                                (fromItem as EquipItem).effect = (fromItem as EquipItem).effect + (fromStr + "<br/>");
                            }
                            i = (i + 1);
                            continue;
                        }
                        if (effect.@Value < 1)
                        {
                            fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                        }
                        else
                        {
                            fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                        }
                        (fromItem as EquipItem).mosaic[int(effect.@Position)] = effect.@StoneId;
                        (fromItem as EquipItem).mosaicEffect[int(effect.@Position)] = fromStr;
                        (fromItem as EquipItem).mosaicValue[int(effect.@Position)] = effect.@Value;
                    }
                }
                j;
                var _loc_5:int = 0;
                var _loc_6:* = xmlData.Get.Weapon.Effects.Effect;
                while (_loc_6 in _loc_5)
                {
                    
                    toEffect = _loc_6[_loc_5];
                    e2Id = toEffect.@Id;
                    var _loc_8:int = 0;
                    var _loc_9:* = ItemConfig.ITEM_EFFECT.Effect;
                    var _loc_7:* = new XMLList("");
                    for each (_loc_10 in _loc_9)
                    {
                        
                        var _loc_11:* = _loc_9[_loc_8];
                        with (_loc_9[_loc_8])
                        {
                            if (@Id == e2Id)
                            {
                                _loc_7[_loc_8] = _loc_10;
                            }
                        }
                    }
                    toStr = _loc_7.@Name;
                    if (StringUtil.trim(toStr) != "")
                    {
                        if (toEffect.@Type < 2)
                        {
                            if (toEffect.@Value < 1)
                            {
                                toStr = toStr + (effect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(toEffect.@Value * 100, 1) + "%"));
                            }
                            else
                            {
                                toStr = toStr + (effect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value, 1)) : ("+" + XMath.formatNumber(toEffect.@Value, 1)));
                            }
                            if (j < 1)
                            {
                                var _loc_7:int = 0;
                                var _loc_8:* = ItemConfig.WEAPON_CONFIG.Weapon;
                                while (_loc_8 in _loc_7)
                                {
                                    
                                    xmlNodes = _loc_8[_loc_7];
                                    if (xmlNodes.@Id == xmlData.Get.Weapon.@WeaponId)
                                    {
                                        (toItem as EquipItem).baseEffect = xmlNodes.@Info;
                                    }
                                }
                            }
                            else
                            {
                                (toItem as EquipItem).effect = (toItem as EquipItem).effect + (toStr + "<br/>");
                            }
                            j = (j + 1);
                            continue;
                        }
                        if (toEffect.@Value < 1)
                        {
                            toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(toEffect.@Value * 100, 1) + "%"));
                        }
                        else
                        {
                            toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value, 1)) : ("+" + XMath.formatNumber(toEffect.@Value, 1)));
                        }
                        (toItem as EquipItem).mosaic[int(toEffect.@Position)] = toEffect.@StoneId;
                        (toItem as EquipItem).mosaicEffect[int(toEffect.@Position)] = toStr;
                        (toItem as EquipItem).mosaicValue[int(toEffect.@Position)] = toEffect.@Value;
                    }
                }
                fromItem.fromUI = UIConfig.ITEM_BAG_PANE;
                toItem.fromUI = UIConfig.ITEM_BAG_PANE;
                vc.push(fromItem);
                vc.push(toItem);
                wData = new Object();
                wData.weaponVector = vc;
                wData.per = int(xmlData.@Prob) + int(xmlData.@ProbPlus);
                arr.push(wData);
            }
            return arr;
        }// end function

        public static function translateUseInfoData(param1:XML) : Vector.<ItemModel>
        {
            var fromItem:ItemModel;
            var toItem:ItemModel;
            var effect:XML;
            var eId:int;
            var fromStr:String;
            var toEffect:XML;
            var e2Id:int;
            var toStr:String;
            var serverData:* = param1;
            var vc:* = new Vector.<ItemModel>;
            var type:* = serverData.Actions.Action.Upgrades.Upgrade.Now.@Type;
            switch(type)
            {
                case ItemCategory.OFFICER:
                {
                    fromItem = ItemBuilder.createItem(ItemCategory.OFFICER, serverData.Actions.Action.Upgrades.Upgrade.Now.Pet.@PetId);
                    (fromItem as OfficerItem).weaponId = serverData.Actions.Action.Upgrades.Upgrade.Now.Pet.@WeaponId;
                    toItem = ItemBuilder.createItem(ItemCategory.OFFICER, serverData.Actions.Action.Upgrades.Upgrade.Get.Pet.@PetId);
                    (toItem as OfficerItem).weaponId = serverData.Actions.Action.Upgrades.Upgrade.Get.Pet.@WeaponId;
                    fromItem.itemId = serverData.Actions.Action.Upgrades.Upgrade.Now.Pet.@PetId;
                    (fromItem as OfficerItem).sId = serverData.Actions.Action.Upgrades.Upgrade.Now.Pet.@Id;
                    (toItem as OfficerItem).sId = serverData.Actions.Action.Upgrades.Upgrade.Get.Pet.@Id;
                    break;
                }
                case ItemCategory.SKILL:
                {
                    fromItem = ItemBuilder.createItem(ItemCategory.SKILL, serverData.Actions.Action.Upgrades.Upgrade.Now.Skill.@SkillId);
                    toItem = ItemBuilder.createItem(ItemCategory.SKILL, serverData.Actions.Action.Upgrades.Upgrade.Get.Skill.@SkillId);
                    fromItem.sId = serverData.Actions.Action.Upgrades.Upgrade.Now.Skill.@Id;
                    fromItem.itemId = serverData.Actions.Action.Upgrades.Upgrade.Now.Skill.@SkillId;
                    break;
                }
                case ItemCategory.WEAPON:
                {
                    fromItem = ItemBuilder.createItem(ItemCategory.WEAPON, serverData.Actions.Action.Upgrades.Upgrade.Now.Weapon.@WeaponId);
                    toItem = ItemBuilder.createItem(ItemCategory.WEAPON, serverData.Actions.Action.Upgrades.Upgrade.Get.Weapon.@WeaponId);
                    fromItem.sId = serverData.Actions.Action.Upgrades.Upgrade.Now.Weapon.@Id;
                    fromItem.itemId = serverData.Actions.Action.Upgrades.Upgrade.Now.Weapon.@WeaponId;
                    var _loc_3:int = 0;
                    var _loc_4:* = serverData.Actions.Action.Upgrades.Upgrade.Now.Weapon.Effects.Effect;
                    while (_loc_4 in _loc_3)
                    {
                        
                        effect = _loc_4[_loc_3];
                        eId = effect.@Id;
                        var _loc_6:int = 0;
                        var _loc_7:* = ItemConfig.ITEM_EFFECT.Effect;
                        var _loc_5:* = new XMLList("");
                        for each (_loc_8 in _loc_7)
                        {
                            
                            var _loc_9:* = _loc_7[_loc_6];
                            with (_loc_7[_loc_6])
                            {
                                if (@Id == eId)
                                {
                                    _loc_5[_loc_6] = _loc_8;
                                }
                            }
                        }
                        fromStr = _loc_5.@Name;
                        if (effect.@Value < 1)
                        {
                            fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(effect.@Value * 100, 1) + "%"));
                        }
                        else
                        {
                            fromStr = fromStr + (effect.@Value < 0 ? (XMath.formatNumber(effect.@Value, 1)) : ("+" + XMath.formatNumber(effect.@Value, 1)));
                        }
                        (fromItem as EquipItem).effect = (fromItem as EquipItem).effect + (fromStr + "<br/>");
                    }
                    var _loc_3:int = 0;
                    var _loc_4:* = serverData.Actions.Action.Upgrades.Upgrade.Get.Weapon.Effects.Effect;
                    while (_loc_4 in _loc_3)
                    {
                        
                        toEffect = _loc_4[_loc_3];
                        e2Id = toEffect.@Id;
                        var _loc_6:int = 0;
                        var _loc_7:* = ItemConfig.ITEM_EFFECT.Effect;
                        var _loc_5:* = new XMLList("");
                        for each (_loc_8 in _loc_7)
                        {
                            
                            var _loc_9:* = _loc_7[_loc_6];
                            with (_loc_7[_loc_6])
                            {
                                if (@Id == e2Id)
                                {
                                    _loc_5[_loc_6] = _loc_8;
                                }
                            }
                        }
                        toStr = _loc_5.@Name;
                        if (toEffect.@Value < 1)
                        {
                            toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value * 100, 1) + "%") : ("+" + XMath.formatNumber(toEffect.@Value * 100, 1) + "%"));
                        }
                        else
                        {
                            toStr = toStr + (toEffect.@Value < 0 ? (XMath.formatNumber(toEffect.@Value, 1)) : ("+" + XMath.formatNumber(toEffect.@Value, 1)));
                        }
                        (toItem as EquipItem).effect = (toItem as EquipItem).effect + (toStr + "<br/>");
                    }
                    break;
                }
                default:
                {
                    break;
                }
            }
            fromItem.fromUI = UIConfig.ITEM_BAG_PANE;
            toItem.fromUI = UIConfig.ITEM_BAG_PANE;
            vc.push(fromItem);
            vc.push(toItem);
            return vc;
        }// end function

        public static function translateArenaListData(param1:XML) : Array
        {
            var _loc_3:XML = null;
            var _loc_4:Object = null;
            var _loc_2:Array = [];
            for each (_loc_3 in param1.Arena.UserEntity)
            {
                
                _loc_4 = new Object();
                _loc_4.uId = _loc_3.UserDynamic.UserId;
                _loc_4.nick = _loc_3.User.Name;
                _loc_4.snsAcc = _loc_3.User.SNSAcc;
                if (String(_loc_3.User.Avatar).indexOf("http://img.kaixin001.com.cn/") > -1)
                {
                    _loc_4.avatar = ModelLocator.getInstance().staticURL + "game/" + ApplicationConfig.VERSION + "/assets/images/kx_men.gif";
                }
                else
                {
                    _loc_4.avatar = _loc_3.User.Avatar;
                }
                _loc_4.hp = _loc_3.UserDynamic.HP;
                _loc_4.strength = _loc_3.UserDynamic.Strength;
                _loc_4.dex = _loc_3.UserDynamic.Dexterity;
                _loc_4.speed = _loc_3.UserDynamic.Speed;
                _loc_4.job = _loc_3.UserDynamic.Job;
                _loc_4.jobStr = ModelLocator.getInstance().getJobStr(int(_loc_3.UserDynamic.Job));
                _loc_4.level = _loc_3.UserDynamic.Level;
                _loc_4.sp = _loc_3.UserDynamic.PersonalSignature;
                _loc_4.vd = _loc_3.UserDynamic.VictoryDeclare;
                _loc_4.suit = int(_loc_3.UserAvatar.@AvatarId);
                _loc_4.snsName = _loc_3.User.SNSName;
                _loc_2.push(_loc_4);
            }
            return _loc_2;
        }// end function*/

    }
}
