package project.utils
{
    import flash.external.ExternalInterface;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import project.config.LocalConfig;
	import project.controller.SMZTController;
	import project.core.SMZTUIManager;
	import project.debug.Debug;
	import project.model.data.PlayerData;
	import project.model.item.CardModel;
	import flash.system.Security;
	import project.model.ModelLocator;
    public class Browser extends Object
    {

        public function Browser()
        {
            return;
        }// end function

		//-----------------bbjxl---------------------------------------
		public static function feedInfor(param:String) : void
        {
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
			Debug.log("ExternalInterface.available="+ExternalInterface.available)
            if (ExternalInterface.available)
            {
				Debug.log("调用ＪＳ的showFeedDialog");
				//ExternalInterface.addCallback("getFeedBonus", getFeedBonus);
                ExternalInterface.call("showFeedDialog",param);
            }
            return;
        }// end function
		
		/*public static function getFeedBonus(param:*):void 
		{
			Debug.log("getFeedBonus");
			SMZTController.getInstance().getFeedBonusData(param);
		}*/
		
		/**
		 * 访问主页　
		 */
		public static function visiteInfo(snsid:String):void {
			var temp:String = ModelLocator.getInstance().snsType;
				var enter:String = String(LocalConfig.LOCAL_LAN.FriendsInfoPanel.child(temp).@Text.toXMLString()).replace("{snsid}",snsid);
				navigateToURL(new URLRequest(enter), "_blank");
			}
		//--------------------------------------------------------
		/**
		 * 刷新页面
		 */
        public static function refresh() : void
        {
            if (ExternalInterface.available)
            {
                ExternalInterface.call("refresh");
            }
            return;
        }// end function

        public static function inviteFriends() : void
        {
            trace("ExternalInterface:inviteFriends");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("inviteFriends");
            }
            return;
        }// end function

        public static function getCash() : void
        {
            trace("ExternalInterface:getCash");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("getCash");
            }
            return;
        }// end function

        public static function getCashInNewWin() : void
        {
            if (ExternalInterface.available)
            {
                ExternalInterface.call("getCashInNewWin");
            }
            trace("ExternalInterface:getCashInNewWin");
            return;
        }// end function

        public static function addBookMark() : void
        {
            if (ExternalInterface.available)
            {
                ExternalInterface.call("addBookMark");
            }
            trace("ExternalInterface:addBookMark");
            return;
        }// end function

		/**
		 * 分享卡
		 * @param	cardModle
		 */
        /*public static function shareCard(cardModle:CardModel) : void
        {
            var _loc_2:String = null;
            trace("ExternalInterface:shareCard");
            if (ExternalInterface.available)
            {
                _loc_2 = "";
                switch(cardModle.star)
                {
                    case 5:
                    {
                        _loc_2 = "xiyou";
                        break;
                    }
                    case 6:
                    {
                        _loc_2 = "chuanqi";
                        break;
                    }
                    case 7:
                    {
                        _loc_2 = "nitian";
                    }
                    default:
                    {
                        break;
                    }
                }
                ExternalInterface.call("sendFeed", "getcard", _loc_2, cardModle.name, cardModle.imageUrl, cardModle.race);
            }
            return;
        }// end function/*

		/**
		 * 分享神秘洞窟
		 * @param	ExternalInterface
		 */
        /*public static function shareCavity(shareId:int) : void
        {
            var _loc_2:String = null;
            trace("ExternalInterface:shareCavity");
            if (ExternalInterface.available)
            {
                _loc_2 = "";
                switch(shareId)
                {
                    case 1:
                    {
                        _loc_2 = "jiandan";//简单
                        break;
                    }
                    case 2:
                    {
                        _loc_2 = "putong";
                        break;
                    }
                    case 3:
                    {
                        _loc_2 = "kunnan";
                        break;
                    }
                    case 4:
                    {
                        _loc_2 = "emeng";
                    }
                    default:
                    {
                        break;
                    }
                }
                ExternalInterface.call("sendFeed", "getcard", _loc_2, "", "", "");
            }
            return;
        }// end function

        public static function shareAchieve(ExternalInterface:Object) : void
        {
            trace("ExternalInterface:shareAchieve");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("sendFeed", "achieve", ExternalInterface["TargetId"], ExternalInterface["Step"], ExternalInterface["Image"], ExternalInterface["Name"]);
            }
            return;
        }// end function

        public static function shareLevelUp(ExternalInterface:int) : void
        {
            trace("ExternalInterface:shareLevelUp");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("sendFeed", "levelup", ExternalInterface);
            }
            return;
        }// end function

        public static function shareBattleWithFriend(ExternalInterface:String, ExternalInterface:int, ExternalInterface:String) : void
        {
            trace("ExternalInterface:shareBattleWithFriend");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("sendFeed", "friend", ExternalInterface, ExternalInterface, ExternalInterface);
            }
            return;
        }// end function

        public static function shareBattle(ExternalInterface:String) : void
        {
            trace("ExternalInterface:shareBattle");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("sendFeed", "battle", ExternalInterface);
            }
            return;
        }// end function

        public static function shareMainStory(ExternalInterface:int, ExternalInterface:String) : void
        {
            trace("ExternalInterface:shareMainStory");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("sendFeed", "luckarea", ExternalInterface, ExternalInterface);
            }
            return;
        }// end function

        public static function addFan() : void
        {
            trace("ExternalInterface:addFan");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("addFan");
            }
            return;
        }// end function

        public static function sendFreeGift() : void
        {
            trace("ExternalInterface:freegift");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("freegift");
            }
            return;
        }// end function

        public static function alertInfo(ExternalInterface:String) : void
        {
            trace("ExternalInterface:alertInfo");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("alertInfo", ExternalInterface);
            }
            return;
        }// end function

        public static function visiteInfo(ExternalInterface:String) : void
        {
            trace("ExternalInterface:visiteInfo");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("getprofile", ExternalInterface);
            }
            return;
        }// end function

        public static function openAdLink() : void
        {
            trace("ExternalInterface:openAdLink");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("adto");
            }
            return;
        }// end function

        public static function openNoticeLink() : void
        {
            trace("ExternalInterface:openNoticeLink");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("notice");
            }
            return;
        }// end function

        public static function openStageWarRuleLink() : void
        {
            trace("ExternalInterface:openStageWarRuleLink");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("notice", 1);
            }
            return;
        }// end function

        public static function openComposeRuleLink() : void
        {
            trace("ExternalInterface:openComposeRuleLink");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("openCombimeRules");
            }
            return;
        }// end function

        public static function openStrongRuleLink() : void
        {
            trace("ExternalInterface:openStrongRuleLink");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("openStrongRules");
            }
            return;
        }// end function

        public static function openCDKeyLink() : void
        {
            trace("ExternalInterface:openCDKeyLink");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("openCdKeyLink");
            }
            return;
        }// end function

        public static function openRealTimeRules() : void
        {
            trace("ExternalInterface:openRealTimeRules");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("openRealTimeRules");
            }
            return;
        }// end function

        public static function openCavityExHelp() : void
        {
            trace("ExternalInterface:openExchangeExpo");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("openExchangeExpo");
            }
            return;
        }// end function

        public static function openStrenthHelp() : void
        {
            trace("ExternalInterface:openStrenthHelp");
            if (ExternalInterface.available)
            {
                ExternalInterface.call("openStrongRules");
            }
            return;
        }// end function*/

    }
}
