package project.model
{
    import project.config.*;
   
    import project.model.item.*;

    import project.model.skill.*;

    import flash.events.*;

    public class ItemBuilder extends EventDispatcher
    {

        public function ItemBuilder(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

        public static function createItem(param1:int, param2:int, param3:int = 0, param4:Object = null, param5:int = 0) : ItemModel
        {
            var _loc_6:int = 0;
            var _loc_7:int = 0;
            var _loc_8:ItemModel = null;
            //var _loc_9:OfficerItem = null;
            //var _loc_10:EquipItem = null;
            var _loc_11:SkillItem = null;
            //var _loc_12:JewelryItem = null;
            //var _loc_13:StoneItem = null;
            //var _loc_14:SuitItem = null;
            var _loc_15:ItemModel = null;
            _loc_6 = param2;
            _loc_7 = param1;
            switch(_loc_7)
            {
                case ItemCategory.ITEM:
                {
                    _loc_8 = new ItemModel(param3, _loc_6, _loc_7);
                    return _loc_8;
                }
                /*case ItemCategory.OFFICER:
                {
                    _loc_9 = new OfficerItem(param3, _loc_6, _loc_7);
                    return _loc_9;
                }
                case ItemCategory.WEAPON:
                {
                    _loc_10 = new EquipItem(param3, _loc_6, _loc_7);
                    return _loc_10;
                }*/
                case ItemCategory.SKILL:
                {
                    _loc_11 = new SkillItem(param3, _loc_6, _loc_7);
                    return _loc_11;
                }
               /* case ItemCategory.JEWELRY:
                {
                    _loc_12 = new JewelryItem(param3, _loc_6, _loc_7, param4);
                    return _loc_12;
                }
                case ItemCategory.STONE:
                {
                    _loc_13 = new StoneItem(param3, _loc_6, _loc_7);
                    return _loc_13;
                }
                case ItemCategory.SUIT:
                {
                    _loc_14 = new SuitItem(param3, _loc_6, _loc_7);
                    return _loc_14;
                }*/
                default:
                {
                    _loc_15 = new ItemModel(param3, _loc_6, _loc_7);
                    return _loc_15;
                    break;
                }
            }
        }// end function

    }
}
