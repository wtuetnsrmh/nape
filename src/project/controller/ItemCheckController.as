package project.controller
{
    import project.config.*;
    import project.model.*;
    import project.model.item.*;
    
    import flash.events.*;

    public class ItemCheckController extends EventDispatcher
    {

        public function ItemCheckController(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

        public static function checkProp(param1:int) : void
        {
            SMZTController.getInstance().checkHasItem(param1, onCheckBack);
            return;
        }// end function

        private static function onCheckBack(param1:XML) : void
        {
            var _loc_2:ItemModel = null;
            var _loc_3:ItemModel = null;
            if (param1.hasOwnProperty("UserPackage"))
            {
                _loc_2 = ItemBuilder.createItem(ItemCategory.ITEM, param1.UserPackage.@ItemId, 0, param1.UserPackage.@ItemId);
                _loc_2.itemId = param1.UserPackage.@ItemId;
                _loc_2.sId = param1.UserPackage.@Id;
                QuickPurchasePane.getInstance().mode = 1;
                QuickPurchasePane.getInstance().itemModel = _loc_2;
                QuickPurchasePane.getInstance().show(true);
            }
            else
            {
                _loc_3 = ItemBuilder.createItem(ItemCategory.ITEM, param1.Offer.@PropId, 0, param1.Offer.@PropId);
                if (param1.Offer.@VipSale > 0)
                {
                    _loc_3.shopDiscountRMB = param1.Offer.@VipSale;
                }
                _loc_3.itemId = param1.Offer.@PropId;
                _loc_3.sId = param1.Offer.@Id;
                _loc_3.shopPrice = param1.Offer.@Silver;
                _loc_3.shopPriceRMB = param1.Offer.@Gold;
                QuickPurchasePane.getInstance().mode = 0;
                QuickPurchasePane.getInstance().itemModel = _loc_3;
                QuickPurchasePane.getInstance().show(true);
            }
            return;
        }// end function

    }
}
