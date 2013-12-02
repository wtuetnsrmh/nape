package project.controller
{
    import project.config.*;
    import project.core.*;
    import project.model.*;
    import project.model.item.*;
    import project.view.module.alert.*;
    
    import flash.events.*;
    import flash.geom.*;
    import mx.utils.*;

    public class ItemUseCallBackController extends EventDispatcher
    {

        public function ItemUseCallBackController(param1:IEventDispatcher = null)
        {
            super(param1);
            return;
        }// end function

        public static function showItemUseInfo(param1:ItemModel, param2:XML) : void
        {
            var itemId:int;
            var category:int;
            var itemId1:int;
            var category1:int;
            var im1:ItemModel;
            var im:* = param1;
            var xmlData:* = param2;
            var ims:* = im;
            var aId:* = xmlData.Announcement;
            var message:* = ims.useInfo;
            if (StringUtil.trim(message) == "")
            {
                message = "使用道具" + ims.name + "成功。";
            }
            if (xmlData.Result.Item.@Type == -2)
            {
                handleUseItemBack(xmlData.Result);
            }
            else if (xmlData.Result.Item.@Type == 2)
            {
                var _loc_5:int = 0;
                var _loc_6:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_4:* = new XMLList("");
                for each (_loc_7 in _loc_6)
                {
                    
                    var _loc_8:* = _loc_6[_loc_5];
                    with (_loc_6[_loc_5])
                    {
                        if (@Id == xmlData.Result.Item.@Id)
                        {
                            _loc_4[_loc_5] = _loc_7;
                        }
                    }
                }
                itemId = _loc_4.@Addon;
                var _loc_5:int = 0;
                var _loc_6:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_4:* = new XMLList("");
                for each (_loc_7 in _loc_6)
                {
                    
                    var _loc_8:* = _loc_6[_loc_5];
                    with (_loc_6[_loc_5])
                    {
                        if (@Id == xmlData.Result.Item.@Id)
                        {
                            _loc_4[_loc_5] = _loc_7;
                        }
                    }
                }
                category = _loc_4.@Type;
                if (category > 3)
                {
                    category;
                    itemId = xmlData.Result.Item.@Id;
                }
                im = ItemBuilder.createItem(category, itemId, 0, itemId);
                GetPrizePane.getInstance().showItem(im, new Point(350, 400));
            }
            else if (xmlData.Result.Item.@Type == 0)
            {
                var _loc_5:int = 0;
                var _loc_6:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_4:* = new XMLList("");
                for each (_loc_7 in _loc_6)
                {
                    
                    var _loc_8:* = _loc_6[_loc_5];
                    with (_loc_6[_loc_5])
                    {
                        if (@Id == xmlData.Result.Item.@Id)
                        {
                            _loc_4[_loc_5] = _loc_7;
                        }
                    }
                }
                itemId1 = _loc_4.@Addon;
                var _loc_5:int = 0;
                var _loc_6:* = ItemConfig.ITEM_CONFIG.Prop;
                var _loc_4:* = new XMLList("");
                for each (_loc_7 in _loc_6)
                {
                    
                    var _loc_8:* = _loc_6[_loc_5];
                    with (_loc_6[_loc_5])
                    {
                        if (@Id == xmlData.Result.Item.@Id)
                        {
                            _loc_4[_loc_5] = _loc_7;
                        }
                    }
                }
                category1 = _loc_4.@Type;
                if (category1 > 3)
                {
                    category1;
                    itemId1 = xmlData.Result.Item.@Id;
                }
                im1 = ItemBuilder.createItem(category1, itemId1, 0, itemId1);
                GetPrizePane.getInstance().showItem(im1, new Point(350, 400));
            }
            else if (int(aId) > 0)
            {
                ShareSelectPane.getInstance().aId = aId;
                AlertSharePane.getInstance().showMessage(message);
            }
            else
            {
                AlertConfirmPane.getInstance().showMessage(message);
            }
            return;
        }// end function

        public static function onGetAffliateSilverBack(param1:int = 0, param2:int = 0) : void
        {
            if (param2 == 0)
            {
                SMZTUIManager.getInstance().mainPane.playSilverGetAnime(param1, 360, 320);
            }
            else
            {
                SMZTUIManager.getInstance().mainPane.playGoldGetAnime(param1, 360, 320);
            }
            SMZTUIManager.getInstance().friendPane.refreshFriendList();
            SMZTSystemManager.getInstance().updateHeartBeat();
            return;
        }// end function

        private static function handleUseItemBack(param1:XMLList) : void
        {
            var _loc_2:XML = null;
            for each (_loc_2 in param1.Item)
            {
                
                if (_loc_2.@Type == -2)
                {
                    SMZTUIManager.getInstance().mainPane.playSilverGetAnime(_loc_2.@Amount, 360, 320);
                }
            }
            return;
        }// end function

    }
}
