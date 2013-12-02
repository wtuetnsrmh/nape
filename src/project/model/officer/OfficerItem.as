package project.model.officer
{
    import project.config.*;
    import project.model.data.*;
    import project.model.item.*;

    public class OfficerItem extends ItemModel
    {
        private var _weaponId:int;
        private var _skillId:int;
        private var _element:int;
        private var _force:int;
        private var _index:int = -1;
        private var _elementStr:String;
        private var _maxHp:int;
        private var _currentHp:int;
        private var _str:int;
        private var _spd:int;
        private var _dex:int;
        private var _tease:int;
        private var _teaseTime:int;
        private var _expRatio:int;
        private var _exp:int = -1;
        private var _expMax:int;
        private var _isEquiped:int;
        private var _skill:String = "";
        private var _weapon:String = "";
        private var _damage:String = "";
        private var _hp:int;
        private var _baseDamage:String;
        private var _extrHp:int;

        public function OfficerItem(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:String = null, param7:int = 1, param8:int = 1, param9:String = null)
        {
            var _loc_14:String = null;
            var _loc_15:XML = null;
            var _loc_16:XML = null;
            var _loc_17:XML = null;
            super(param1, param2, param3, param4, param5, param6, param7, param8, param9);
            this.itemId = param2;
            var _loc_10:* = param2.toString();
            var _loc_11:* = (param2 % 10000).toString();
            cardId = int(_loc_11);
            var _loc_12:* = imageSrcPrefix + "officers/WJHead_" + _loc_11 + "_S.swf";
            var _loc_13:* = imageSrcPrefix + "officers/WJHead_" + _loc_11 + "_I.swf";
            _loc_14 = imageSrcPrefix + "officers/WJ_" + _loc_11 + ".swf";
            this.ico = _loc_12;
            this.icoImage = _loc_13;
            this.icoBigImage = _loc_14;
            this.icoCardImage = imageSrcPrefix + "officers/WJHead_" + _loc_11 + "_B.swf";
            this.level = int(param2) / 10000;
            this.category = param3;
            for each (_loc_15 in ItemConfig.OFFICER_CONFIG.Pet)
            {
                
                if (_loc_15.@Id == param2)
                {
                    this.name = _loc_15.@Name;
                    this.str = _loc_15.@Strength;
                    this.dex = _loc_15.@Dexterity;
                    this.spd = _loc_15.@Speed;
                    this.hp = _loc_15.@HP;
                    this.needLevel = _loc_15.@RequiredLevel;
                    this.requiredDex = _loc_15.@RequiredDex;
                    this.requiredSpeed = _loc_15.@RequiredSpeed;
                    this.requiredStr = _loc_15.@RequiredStr;
                    this.element = _loc_15.@Element;
                    this.force = _loc_15.@SideId;
                    this.index = _loc_15.@Location;
                    this.description = _loc_15.@Tips;
                    this.skillId = param2;
                    this.weaponId = param2;
                    for each (_loc_16 in ItemConfig.SKILL_ITEM.Skill)
                    {
                        
                        if (_loc_16.@Id == this.skillId || _loc_16.@Id == this.skillId + 100)
                        {
                            this.skill = this.skill + (_loc_16.@Name + " ");
                        }
                    }
                    for each (_loc_17 in ItemConfig.WEAPON_CONFIG.Weapon)
                    {
                        
                        if (_loc_17.@Id == this.weaponId)
                        {
                            this.weapon = _loc_17.@Name;
                            this.damage = _loc_17.@MinDamage + "～" + _loc_17.@MaxDamage;
                            this.baseDamage = _loc_17.@MinDamage + "～" + _loc_17.@MaxDamage;
                            break;
                        }
                    }
                }
            }
            switch(this.element)
            {
                case 0:
                {
                    this.elementStr = LocalConfig.LOCAL_LAN.Characters.Jin.@Text;
                    break;
                }
                case 1:
                {
                    this.elementStr = LocalConfig.LOCAL_LAN.Characters.Mu.@Text;
                    break;
                }
                case 2:
                {
                    this.elementStr = LocalConfig.LOCAL_LAN.Characters.Shui.@Text;
                    break;
                }
                case 3:
                {
                    this.elementStr = LocalConfig.LOCAL_LAN.Characters.Huo.@Text;
                    break;
                }
                case 4:
                {
                    this.elementStr = LocalConfig.LOCAL_LAN.Characters.Tu.@Text;
                    break;
                }
                default:
                {
                    break;
                }
            }
            this.canUse = int(PlayerData.getInstance().playerLevel) >= needLevel ? (1) : (0);
            return;
        }// end function

        public function getSpecialToolTipStr() : String
        {
            var _loc_1:String = "";
            var _loc_2:* = int(PlayerData.getInstance().ownLevel) >= needLevel ? (needLevel.toString()) : ("<font color = \'#FF0000\'>" + needLevel.toString() + "</font>");
            if (_loc_2 == "1" || _loc_2 == "0")
            {
                _loc_2 = LocalConfig.LOCAL_LAN.Characters.None.@Text;
            }
            else
            {
                _loc_2 = String(LocalConfig.LOCAL_LAN.ItemToolTip.NeedLevel.@Text).replace("{level}", _loc_2);
            }
            _loc_1 = level > 0 ? ("<font color = \'#FFFFFF\'>+" + level + "    " + name + "</font><br/><br/>") : ("<font color = \'#FFFFFF\'>  " + name + "</font><br/><br/>");
            if (this.exp > -1)
            {
                _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.OfficerExpTip.@Text).replace("{exp}", this.exp.toString()).replace("{expmax}", this.expMax.toString());
            }
            var _loc_3:* = LocalConfig.LOCAL_LAN.ItemToolTip.OfficerNormalTip.@Text;
            _loc_3 = _loc_3.replace("{element}", this._elementStr).replace("{hp}", this._hp.toString());
            _loc_3 = _loc_3.replace("{str}", this._str).replace("{dex}", this.dex).replace("{spd}", this.spd);
            _loc_3 = _loc_3.replace("{weapon}", this._weapon).replace("{damage}", this.damage).replace("{skill}", this._skill).replace("{restr}", _loc_2);
            _loc_1 = _loc_1 + _loc_3;
            _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.ItemDescription.@Text).replace("{description}", description);
            return _loc_1;
        }// end function

        override public function getToolTipStr() : String
        {
            var _loc_1:String = "";
            var _loc_2:* = int(PlayerData.getInstance().ownLevel) >= needLevel ? (needLevel.toString()) : ("<font color = \'#FF0000\'>" + needLevel.toString() + "</font>");
            if (_loc_2 == "1" || _loc_2 == "0")
            {
                _loc_2 = LocalConfig.LOCAL_LAN.Characters.None.@Text;
            }
            else
            {
                _loc_2 = String(LocalConfig.LOCAL_LAN.ItemToolTip.NeedLevel.@Text).replace("{level}", _loc_2);
            }
            _loc_1 = level > 0 ? ("<font color = \'#FFFFFF\'>+" + level + "    " + name + "</font><br/><br/>") : ("<font color = \'#FFFFFF\'>  " + name + "</font><br/><br/>");
            if (this.exp > -1)
            {
                _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.OfficerExpTip.@Text).replace("{exp}", this.exp.toString()).replace("{expmax}", this.expMax.toString());
            }
            var _loc_3:* = LocalConfig.LOCAL_LAN.ItemToolTip.OfficerNormalTip.@Text;
            var _loc_4:* = this.extrHp > 0 ? (this._hp.toString() + "(+" + this.extrHp.toString() + ")") : (this._hp.toString());
            _loc_3 = _loc_3.replace("{element}", this._elementStr).replace("{hp}", _loc_4);
            _loc_3 = _loc_3.replace("{str}", this._str).replace("{dex}", this.dex).replace("{spd}", this.spd);
            _loc_3 = _loc_3.replace("{weapon}", this._weapon).replace("{damage}", this.damage).replace("{skill}", this._skill).replace("{restr}", _loc_2);
            _loc_1 = _loc_1 + _loc_3;
            _loc_1 = _loc_1 + String(LocalConfig.LOCAL_LAN.ItemToolTip.ItemDescription.@Text).replace("{description}", description);
            return _loc_1;
        }// end function

        override public function getToolTipStrWithoutDescription() : String
        {
            var _loc_1:String = "";
            var _loc_2:* = int(PlayerData.getInstance().ownLevel) >= needLevel ? (needLevel.toString()) : ("<font color = \'#FF0000\'>" + needLevel.toString() + "</font>");
            if (_loc_2 == "1" || _loc_2 == "0")
            {
                _loc_2 = LocalConfig.LOCAL_LAN.Characters.None.@Text;
            }
            else
            {
                _loc_2 = String(LocalConfig.LOCAL_LAN.ItemToolTip.NeedLevel.@Text).replace("{level}", _loc_2);
            }
            _loc_1 = level > 0 ? ("<font color = \'#FFFFFF\'>+" + level + "    " + name + "</font><br/><br/>") : ("<font color = \'#FFFFFF\'>  " + name + "</font><br/><br/>");
            var _loc_3:* = LocalConfig.LOCAL_LAN.ItemToolTip.OfficerNormalTip.@Text;
            var _loc_4:* = this.extrHp > 0 ? (this._hp.toString() + "(+" + this.extrHp.toString() + ")") : (this._hp.toString());
            _loc_3 = _loc_3.replace("{element}", this._elementStr).replace("{hp}", _loc_4);
            _loc_3 = _loc_3.replace("{str}", this._str).replace("{dex}", this.dex).replace("{spd}", this.spd);
            _loc_3 = _loc_3.replace("{weapon}", this._weapon).replace("{damage}", this.damage).replace("{skill}", this._skill).replace("{restr}", _loc_2);
            _loc_1 = _loc_1 + _loc_3;
            return _loc_1;
        }// end function

        public function get weaponId() : int
        {
            return this._weaponId;
        }// end function

        public function set weaponId(param1:int) : void
        {
            var _loc_2:XML = null;
            var _loc_3:int = 0;
            this._weaponId = param1;
            for each (_loc_2 in ItemConfig.WEAPON_CONFIG.Weapon)
            {
                
                if (_loc_2.@Id == this._weaponId)
                {
                    this.weapon = _loc_2.@Name;
                    if (this._weaponId == itemId)
                    {
                        this.damage = this.baseDamage;
                    }
                    else
                    {
                        this.damage = this.baseDamage + "(+" + _loc_2.@MaxDamage + ")";
                        _loc_3 = int(this._weaponId / 10000);
                        if (_loc_3 > 0)
                        {
                            this.weapon = "+" + _loc_3.toString() + " " + _loc_2.@Name;
                        }
                    }
                    break;
                }
            }
            return;
        }// end function

        public function get skillId() : int
        {
            return this._skillId;
        }// end function

        public function set skillId(param1:int) : void
        {
            this._skillId = param1;
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

        public function get force() : int
        {
            return this._force;
        }// end function

        public function set force(param1:int) : void
        {
            this._force = param1;
            return;
        }// end function

        public function get str() : int
        {
            return this._str;
        }// end function

        public function set str(param1:int) : void
        {
            this._str = param1;
            return;
        }// end function

        public function get spd() : int
        {
            return this._spd;
        }// end function

        public function set spd(param1:int) : void
        {
            this._spd = param1;
            return;
        }// end function

        public function get dex() : int
        {
            return this._dex;
        }// end function

        public function set dex(param1:int) : void
        {
            this._dex = param1;
            return;
        }// end function

        public function get tease() : int
        {
            return this._tease;
        }// end function

        public function set tease(param1:int) : void
        {
            this._tease = param1;
            return;
        }// end function

        public function get teaseTime() : int
        {
            return this._teaseTime;
        }// end function

        public function set teaseTime(param1:int) : void
        {
            this._teaseTime = param1;
            return;
        }// end function

        public function get expRatio() : int
        {
            return this._expRatio;
        }// end function

        public function set expRatio(param1:int) : void
        {
            this._expRatio = param1;
            return;
        }// end function

        public function get exp() : int
        {
            return this._exp;
        }// end function

        public function set exp(param1:int) : void
        {
            this._exp = param1;
            return;
        }// end function

        public function get expMax() : int
        {
            return this._expMax;
        }// end function

        public function set expMax(param1:int) : void
        {
            this._expMax = param1;
            return;
        }// end function

        public function get isEquiped() : int
        {
            return this._isEquiped;
        }// end function

        public function set isEquiped(param1:int) : void
        {
            this._isEquiped = param1;
            return;
        }// end function

        public function get index() : int
        {
            return this._index;
        }// end function

        public function set index(param1:int) : void
        {
            this._index = param1;
            return;
        }// end function

        public function get weapon() : String
        {
            return this._weapon;
        }// end function

        public function set weapon(param1:String) : void
        {
            this._weapon = param1;
            return;
        }// end function

        public function get skill() : String
        {
            return this._skill;
        }// end function

        public function set skill(param1:String) : void
        {
            this._skill = param1;
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

        public function get damage() : String
        {
            return this._damage;
        }// end function

        public function set damage(param1:String) : void
        {
            this._damage = param1;
            return;
        }// end function

        public function get hp() : int
        {
            return this._hp;
        }// end function

        public function set hp(param1:int) : void
        {
            this._hp = param1;
            return;
        }// end function

        public function get maxHp() : int
        {
            return this._maxHp;
        }// end function

        public function set maxHp(param1:int) : void
        {
            this._maxHp = param1;
            return;
        }// end function

        public function get currentHp() : int
        {
            return this._currentHp;
        }// end function

        public function set currentHp(param1:int) : void
        {
            this._currentHp = param1;
            return;
        }// end function

        public function get baseDamage() : String
        {
            return this._baseDamage;
        }// end function

        public function set baseDamage(param1:String) : void
        {
            this._baseDamage = param1;
            return;
        }// end function

        public function get extrHp() : int
        {
            return this._extrHp;
        }// end function

        public function set extrHp(param1:int) : void
        {
            this._extrHp = param1;
            return;
        }// end function

    }
}
