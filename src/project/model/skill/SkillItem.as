package project.model.skill
{
    import project.config.*;
    import project.model.data.*;
    import project.model.item.*;

    public class SkillItem extends ItemModel
    {
        private var _job:int;
        private var _skillType:int;
        private var _damage:int;
        private var _effect:String = "";
        private var _target:int;
        private var _index:int;

        public function SkillItem(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:String = null, param7:int = 1, param8:int = 1, param9:String = null)
        {
            /*var _loc_11:XML = null;
            super(param1, param2, param3, param4, param5, param6, param7, param8, param9);
            this.itemId = param2;
            this._job = param2.toString().length > 4 ? (int(param2.toString().substr(1, 1))) : (int(param2.toString().substr(0, 1)));
            this.level = int(param2) / 10000;
            var _loc_10:* = param2.toString().length > 4 ? (param2.toString().substr(1, param2.toString().length)) : (param2.toString());
            cardId = int(_loc_10);
            this.ico = imageSrcPrefix + "skills/JN_" + _loc_10 + ".swf";
            this.icoBigImage = imageSrcPrefix + "skills/JN_" + _loc_10 + ".swf";
            this.icoImage = imageSrcPrefix + "skills/JN_" + _loc_10 + "_I.swf";
            this.icoCardImage = imageSrcPrefix + "skills/JN_" + _loc_10 + "_B.swf";
            this.category = param3;
            for each (_loc_11 in ItemConfig.SKILL_ITEM.Skill)
            {
                
                if (_loc_11.@Id == param2)
                {
                    this.name = _loc_11.@Name;
                    this.description = _loc_11.@Tips;
                    this.needLevel = _loc_11.@RequiredLevel;
                    this.requiredDex = _loc_11.@WeaponProb;
                    this.damage = _loc_11.@Damage;
                    this.requiredStr = _loc_11.@RequiredStr;
                    this.requiredDex = _loc_11.@RequiredDex;
                    this.requiredSpeed = _loc_11.@RequiredSpeed;
                    this.skillType = _loc_11.@Type;
                    this.effect = _loc_11.@Info;
                    this.index = _loc_11.@Location;
                }
            }
            this.canUse = int(PlayerData.getInstance().playerLevel) >= this.needLevel ? (1) : (0);
            return;*/
        }// end function

        /*override public function getToolTipStr() : String
        {
            var _loc_1:String = "";
            _loc_1 = level > 0 ? ("<font color = \'#EE7730\'  size = \'14\'>+" + level + "  " + name + "</font><br/><br/>") : ("  <font color = \'#EE7730\'  size = \'14\'>" + name + "</font><br/><br/>");
            var _loc_2:* = LocalConfig.LOCAL_LAN.ItemToolTip.SkillNormalTip.@Text;
            _loc_2 = _loc_2.replace("{job}", this.getJobStr()).replace("{effect}", this._effect);
            var _loc_3:* = needLevel > 1 ? (needLevel.toString()) : (" 1");
            var _loc_4:* = int(PlayerData.getInstance().ownLevel) >= this.needLevel ? ("#FFFFFF") : ("#FF0000");
            _loc_2 = _loc_2.replace("{color}", _loc_4).replace("{level}", _loc_3);
            _loc_1 = _loc_1 + _loc_2;
            _loc_1 = _loc_1 + ("<font color = \'#FFFFFF\'>" + description + "</font>");
            return _loc_1;
        }// end function

        private function getJobStr() : String
        {
            var _loc_1:String = null;
            switch(this._job)
            {
                case 1:
                {
                    _loc_1 = LocalConfig.LOCAL_LAN.Characters.Seiryu.@Text;
                    break;
                }
                case 2:
                {
                    _loc_1 = LocalConfig.LOCAL_LAN.Characters.Byakko.@Text;
                    break;
                }
                case 3:
                {
                    _loc_1 = LocalConfig.LOCAL_LAN.Characters.Sizaku.@Text;
                    break;
                }
                case 4:
                {
                    _loc_1 = LocalConfig.LOCAL_LAN.Characters.Genbu.@Text;
                    break;
                }
                default:
                {
                    break;
                }
            }
            if (PlayerData.getInstance().occ == this._job)
            {
                return "<font color=\'#FFFFFF\'>" + _loc_1 + "</font>";
            }
            return "<font color=\'#FF0000\'>" + _loc_1 + "</font>";
        }// end function

        override public function getToolTipStrWithoutDescription() : String
        {
            var _loc_1:String = "";
            _loc_1 = level > 0 ? ("<font color = \'#EE7730\' size = \'14\'>+" + level + "  " + name + "</font><br/><br/>") : ("  <font color = \'#EE7730\'  size = \'14\'>" + name + "</font><br/><br/>");
            var _loc_2:* = LocalConfig.LOCAL_LAN.ItemToolTip.SkillNormalTip.@Text;
            _loc_2 = _loc_2.replace("{job}", this.getJobStr()).replace("{effect}", this._effect);
            var _loc_3:* = needLevel > 1 ? (needLevel.toString()) : (" 1");
            var _loc_4:* = int(PlayerData.getInstance().ownLevel) >= this.needLevel ? ("#FFFFFF") : ("#FF0000");
            _loc_2 = _loc_2.replace("{color}", _loc_4).replace("{level}", _loc_3);
            _loc_1 = _loc_1 + _loc_2;
            return _loc_1;
        }// end function

        public function get job() : int
        {
            return this._job;
        }// end function

        public function set job(param1:int) : void
        {
            this._job = param1;
            return;
        }// end function

        public function get skillType() : int
        {
            return this._skillType;
        }// end function

        public function set skillType(param1:int) : void
        {
            this._skillType = param1;
            return;
        }// end function

        public function get damage() : int
        {
            return this._damage;
        }// end function

        public function set damage(param1:int) : void
        {
            this._damage = param1;
            return;
        }// end function

        public function get effect() : String
        {
            return this._effect;
        }// end function

        public function set effect(param1:String) : void
        {
            this._effect = param1;
            return;
        }// end function

        public function get target() : int
        {
            return this._target;
        }// end function

        public function set target(param1:int) : void
        {
            this._target = param1;
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
        }// end function*/

    }
}
