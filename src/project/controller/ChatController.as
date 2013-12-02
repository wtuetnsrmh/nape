package project.controller
{
	/*
	* 描述：聊天管理类
	* 
	*/
    import project.config.*;
    import project.core.*;
    import project.model.*;
    import project.model.data.*;
    import project.model.data.chat.*;
    import project.view.artplug.*;
    import project.view.module.alert.*;
    
    import project.view.module.chat.*;
    import project.view.module.feed.*;
    import project.view.module.loading.*;
    
    
    import flash.events.*;
    import flash.external.*;
    import flash.net.*;
    import flash.text.*;
    import flash.utils.*;
    import mx.utils.*;

    public class ChatController extends EventDispatcher
    {
        public var chatRefreshTimer:Timer;
        private var refreshRate:int = 10000;
        private var fakeInputTimer:Timer;
        private var playRate:int = 1000;
        private var chatData:ChatData;
        private var chatPane:ChatPane;
        private var _currentChannel:int = 0;
        private var _currentChannelFilter:int = 0;
        private var _isOpened:Boolean = false;
        private static var cc:ChatController;

        public function ChatController()
        {
            if (cc)
            {
                throw new Error("Error");
            }
            /*this.chatRefreshTimer = new Timer(this.refreshRate);
            this.chatRefreshTimer.addEventListener(TimerEvent.TIMER, this.onChatNotify);
            this.fakeInputTimer = new Timer(this.playRate);
            this.fakeInputTimer.addEventListener(TimerEvent.TIMER, this.onInputNotify);
            this.chatData = ChatData.getInstance();
            this.chatPane = ChatPane.getInstance();
            return;*/
        }// end function

		//初始化
        public function initStatus() : void
        {
           /* this.chatPane.friendSelect.visible = false;
            this.chatPane.gotoBtn.visible = false;
            this.chatPane.snsnBtn.visible = false;
            this.chatPane.channelGong.gotoAndStop(1);
            this.chatPane.channelSi.gotoAndStop(1);
            this.chatPane.channelZong.gotoAndStop(2);
            this.chatPane.channelZong.addEventListener(MouseEvent.CLICK, this.onChannelSelect);
            this.chatPane.channelSi.addEventListener(MouseEvent.CLICK, this.onChannelSelect);
            this.chatPane.channelGong.addEventListener(MouseEvent.CLICK, this.onChannelSelect);
            this.chatPane.channelGongTab.gotoAndStop(1);
            this.chatPane.channelSiTab.gotoAndStop(1);
            this.chatPane.channelZongTab.gotoAndStop(2);
            this.chatPane.snsnBtn.onClick = this.viistHome;
            this.chatPane.channelGongTab.addEventListener(MouseEvent.CLICK, this.onChannelFilterSelect);
            this.chatPane.channelSiTab.addEventListener(MouseEvent.CLICK, this.onChannelFilterSelect);
            this.chatPane.channelZongTab.addEventListener(MouseEvent.CLICK, this.onChannelFilterSelect);
            this.chatPane.sendMessageBtn.onClick = this.sendMessage;
            this.chatPane.closeChatBtn.onClick = this.hideChat;
            this.chatPane.textInputBox.addEventListener(KeyboardEvent.KEY_UP, this.onKeyUp);
            this.chatPane.textInputBox.addEventListener(FocusEvent.FOCUS_IN, this.onInputFocus);
            this.chatPane.openChat.addEventListener(MouseEvent.CLICK, this.openChat);
            this.chatPane.openChat.visible = false;
            this.chatPane.openChatIn.addEventListener(MouseEvent.CLICK, this.openChat);
            this.chatPane.openChatIn.visible = false;
            this.chatPane.textWorld.visible = true;
            this.chatPane.textGuild.visible = false;
            this.chatPane.textPrivate.visible = false;
            this.chatPane.textWorld.addEventListener(TextEvent.LINK, this.onTextLink);
            this.chatPane.textGuild.addEventListener(TextEvent.LINK, this.onTextLink);
            this.chatPane.textPrivate.addEventListener(TextEvent.LINK, this.onTextLink);
            this.chatPane.gotoBtn.onClick = this.goToFriendsHome;
            this.hideChat();
            if (this.chatPane.getChild("flbtn") as MovieClipButton)
            {
                (this.chatPane.getChild("flbtn") as MovieClipButton).onClick = this.follow;
            }
            return;*/
        }// end function

        /*private function viistHome(event:MouseEvent) : void
        {
            if (!this.chatPane.friendSelect.selectedItem.data)
            {
                return;
            }
            if (ApplicationConfig.mainConfig.snsUserPage.@method == "JS")
            {
                ExternalInterface.call(ApplicationConfig.mainConfig.snsUserPage, PlayerData.getInstance().snsAcc);
            }
            else
            {
                navigateToURL(new URLRequest(String(ApplicationConfig.mainConfig.snsUserPage).replace("{acc}", this.chatPane.friendSelect.selectedItem.data)), ApplicationConfig.mainConfig.snsUserPage.@target);
            }
            return;
        }// end function

        private function follow(event:MouseEvent) : void
        {
            SMZTController.getInstance().followWeibo(this.chatPane.friendSelect.selectedItem.data);
            return;
        }// end function

        private function onInputFocus(event:FocusEvent) : void
        {
            switch(this.currentChannelFilter)
            {
                case 0:
                {
                    this.chatPane.textWorld.verticalScrollPosition = this.chatPane.textWorld.maxVerticalScrollPosition;
                    break;
                }
                case 1:
                {
                    this.chatPane.textGuild.verticalScrollPosition = this.chatPane.textGuild.maxVerticalScrollPosition;
                    break;
                }
                case 99:
                {
                    this.chatPane.textPrivate.verticalScrollPosition = this.chatPane.textPrivate.maxVerticalScrollPosition;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function goToFriendsHome(event:MouseEvent) : void
        {
            if (SMZTPlayer.getInstance().isOpened && this.chatPane.friendSelect.selectedItem.data)
            {
                AlertConfirmPane.getInstance().showMessage(LocalConfig.LOCAL_LAN.ChatController.InFight.@Text);
                return;
            }
            if (this.chatPane.friendSelect.selectedItem.data > 0)
            {
                ModelLocator.getInstance().currentUId = this.chatPane.friendSelect.selectedItem.data;
                SMZTUIManager.getInstance().mainPane.returnMainScene();
                SMZTController.getInstance().initPlayerInfo(this.chatPane.friendSelect.selectedItem.data, this.onInitBack);
                LockScreen.getInstance().show(true);
            }
            return;
        }// end function

        private function onInitBack(param1:XML) : void
        {
            FeedPane.getInstance().hide();
            LockScreen.getInstance().hide();
            if (BudoukaiPane.getInstance().isOpened)
            {
                BudoukaiPane.getInstance().hide();
            }
            if (RankPane.getInstance().isOpened)
            {
                RankPane.getInstance().hide();
            }
            return;
        }// end function

        private function initSimpleFriends() : void
        {
            SMZTController.getInstance().refreshSimpleFriendsList(this.onFriendsBack);
            return;
        }// end function

        private function onFriendsBack(param1:XML) : void
        {
            var _loc_2:XML = null;
            var _loc_3:TextFormat = null;
            var _loc_4:int = 0;
            for each (_loc_2 in param1.Fs.F)
            {
                
                _loc_4 = 0;
                while (_loc_4 < this.chatPane.friendSelect.dataProvider.length)
                {
                    
                    if (this.chatPane.friendSelect.dataProvider.toArray()[_loc_4].data == _loc_2.@Id)
                    {
                        return;
                    }
                    _loc_4++;
                }
                this.chatPane.friendSelect.addItem({data:_loc_2.@Id, label:_loc_2});
            }
            _loc_3 = new TextFormat("微软雅黑", 12);
            _loc_3.color = "0x000000";
            this.chatPane.friendSelect.textField.setStyle("textFormat", _loc_3);
            this.chatPane.friendSelect.dropdown.setRendererStyle("textFormat", _loc_3);
            return;
        }// end function

        private function openChat(event:MouseEvent = null) : void
        {
            this.chatPane.x = 0;
            this.chatPane.openChat.visible = false;
            this.chatPane.openChatIn.visible = false;
            this._isOpened = true;
            this.initSimpleFriends();
            return;
        }// end function

        private function hideChat(event:MouseEvent = null) : void
        {
            this.chatPane.x = -310;
            this.chatPane.openChat.visible = true;
            this._isOpened = false;
            return;
        }// end function

        private function onKeyUp(event:KeyboardEvent) : void
        {
            if (event.keyCode == 13)
            {
                this.sendMessage();
            }
            return;
        }// end function

        private function onTextLink(event:TextEvent) : void
        {
            var _loc_2:* = event.text.split("|");
            this.addPrivateChat(_loc_2[1], _loc_2[0]);
            return;
        }// end function

        public function addPrivateChat(param1:String, param2:int) : void
        {
            var _loc_3:Object = null;
            var _loc_4:Array = null;
            var _loc_5:int = 0;
            var _loc_6:TextFormat = null;
            if (param1.length > 0 && param2 > 0)
            {
                this.openChat();
                this.currentChannel = 99;
                _loc_3 = new Object();
                _loc_3.label = param1;
                _loc_3.data = param2;
                _loc_4 = this.chatPane.friendSelect.dataProvider.toArray();
                _loc_5 = 0;
                while (_loc_5 < _loc_4.length)
                {
                    
                    if (_loc_4[_loc_5].data == param2)
                    {
                        this.chatPane.friendSelect.selectedIndex = _loc_5;
                        return;
                    }
                    _loc_5++;
                }
                this.chatPane.friendSelect.addItem({data:param2, label:param1});
                _loc_6 = new TextFormat("微软雅黑", 12);
                _loc_6.color = "0x000000";
                this.chatPane.friendSelect.textField.setStyle("textFormat", _loc_6);
                this.chatPane.friendSelect.dropdown.setRendererStyle("textFormat", _loc_6);
                this.chatPane.friendSelect.selectedIndex = this.chatPane.friendSelect.dataProvider.length;
            }
            return;
        }// end function

        private function onChannelSelect(event:MouseEvent) : void
        {
            switch(event.currentTarget)
            {
                case this.chatPane.channelZong:
                {
                    this.currentChannel = 0;
                    break;
                }
                case this.chatPane.channelSi:
                {
                    this.currentChannel = 99;
                    break;
                }
                case this.chatPane.channelGong:
                {
                    this.currentChannel = 1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function onChannelFilterSelect(event:MouseEvent) : void
        {
            switch(event.currentTarget)
            {
                case this.chatPane.channelZongTab:
                {
                    this.currentChannelFilter = 0;
                    break;
                }
                case this.chatPane.channelSiTab:
                {
                    this.currentChannelFilter = 99;
                    break;
                }
                case this.chatPane.channelGongTab:
                {
                    this.currentChannelFilter = 1;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function sendMessage(event:MouseEvent = null) : void
        {
            var _loc_2:ChatMessage = new ChatMessage();
            var _loc_3:String= StringUtil.trim(this.chatPane.textInputBox.text);
            if (_loc_3 != "" && _loc_3.length > 0)
            {
                _loc_2.body = _loc_3;
                _loc_2.roomId = this.currentChannel;
                _loc_2.fromUId = ModelLocator.getInstance().uId.toString();
                if (this.currentChannel == 99)
                {
					//广播
                    if (this.chatPane.friendSelect.selectedItem && this.chatPane.friendSelect.selectedItem.data)
                    {
                        _loc_2.toUId = this.chatPane.friendSelect.selectedItem.data;
                        SMZTController.getInstance().sendChat(_loc_2, this.onChatSendBack);
                    }
                }
                else
                {
                    SMZTController.getInstance().sendChat(_loc_2, this.onChatSendBack);
                }
            }
            return;
        }// end function

        private function onChatNotify(event:TimerEvent) : void
        {
            SMZTController.getInstance().refreshChat(this.onChatRefreshBack);
            return;
        }// end function

        private function wrapPlayerNameWithHTML(param1:String, param2:String) : String
        {
            return "<a href=\'event:" + param2 + "|" + param1 + "\'><font color = \'#CCCCCC\'>" + param1 + "</font></a>";
        }// end function

        private function doWisper(param1:ChatMessage, param2:int) : void
        {
            var _loc_5:* = undefined;
            var _loc_3:String = this.wrapPlayerNameWithHTML(param1.toNick, param1.toUId);
            var _loc_4:String = this.wrapPlayerNameWithHTML(param1.fromNick, param1.fromUId);
            if (param2 == 99)
            {
                _loc_5 = this.chatPane.textPrivate;
            }
            else if (param2 == 1)
            {
                _loc_5 = this.chatPane.textWorld;
            }
            else if (param2 == 2)
            {
                _loc_5 = this.chatPane.textGuild;
            }
            else
            {
                _loc_5 = this.chatPane.textWorld;
            }
            if (int(param1.fromUId) == ModelLocator.getInstance().uId)
            {
                _loc_5.htmlText = _loc_5.htmlText + String(LocalConfig.LOCAL_LAN.ChatController.WisperTo.@Text).replace("{color}", param1.color).replace("{op}", _loc_3).replace("{body}", param1.body);
            }
            else if (int(param1.toUId) == ModelLocator.getInstance().uId)
            {
                _loc_5.htmlText = _loc_5.htmlText + String(LocalConfig.LOCAL_LAN.ChatController.WisperFrom.@Text).replace("{color}", param1.color).replace("{op}", _loc_4).replace("{body}", param1.body);
            }
            _loc_5.drawNow();
            _loc_5.verticalScrollPosition = _loc_5.maxVerticalScrollPosition;
            if (!this._isOpened)
            {
                this.chatPane.openChatIn.visible = true;
            }
            return;
        }// end function

        private function doNormalMessage(param1:ChatMessage) : void
        {
            return;
        }// end function

		/*一秒显示一条缓存中的聊天
		* @ param
		* @ param
		*/
       /* private function onInputNotify(event:TimerEvent = null) : void
        {
            var _loc_2:ChatMessage = null;
            var _loc_3:String = null;
            var _loc_4:ChatMessage = null;
            var _loc_5:String = null;
            var _loc_6:ChatMessage = null;
            while (this.chatData.worldMessageVector.length > 0)
            {
                
                _loc_2 = this.chatData.worldMessageVector.shift();
                _loc_3 = "";
                if (int(_loc_2.fromUId) == ModelLocator.getInstance().uId)
                {
                    _loc_3 = String(LocalConfig.LOCAL_LAN.ChatController.IsMe.@Text);
                }
                else
                {
                    _loc_3 = this.wrapPlayerNameWithHTML(_loc_2.fromNick, _loc_2.fromUId);
                }
                if (_loc_2.roomId == 99)
                {
					//私聊
                    this.doWisper(_loc_2, 1);
                    continue;
                }
				//根据事先定的标准替换XML配置文件中的标记为相应的内容
                this.chatPane.textWorld.htmlText = this.chatPane.textWorld.htmlText + String(LocalConfig.LOCAL_LAN.ChatController.Say.@Text).replace("{user}", _loc_3).replace("{body}", _loc_2.body);
                this.chatPane.textWorld.drawNow();
                this.chatPane.textWorld.verticalScrollPosition = this.chatPane.textWorld.maxVerticalScrollPosition;
            }
            while (this.chatData.guildMessageVector.length > 0)
            {
                
                _loc_4 = this.chatData.guildMessageVector.shift();
                _loc_5 = "";
                if (int(_loc_4.fromUId) == ModelLocator.getInstance().uId)
                {
                    _loc_5 = String(LocalConfig.LOCAL_LAN.ChatController.IsMe.@Text);
                }
                else
                {
                    _loc_5 = this.wrapPlayerNameWithHTML(_loc_4.fromNick, _loc_4.fromUId);
                }
                if (_loc_4.roomId == 99)
                {
                    this.doWisper(_loc_4, 2);
                    continue;
                }
                this.chatPane.textGuild.htmlText = this.chatPane.textGuild.htmlText + String(LocalConfig.LOCAL_LAN.ChatController.Say.@Text).replace("{user}", _loc_5).replace("{body}", _loc_4.body);
                this.chatPane.textGuild.drawNow();
                this.chatPane.textGuild.verticalScrollPosition = this.chatPane.textGuild.maxVerticalScrollPosition;
            }
            while (this.chatData.privateMessageVector.length > 0)
            {
                
                _loc_6 = this.chatData.privateMessageVector.shift();
                this.doWisper(_loc_6, 99);
            }
            return;
        }// end function

        private function onError(param1:XML) : void
        {
            switch(this.currentChannelFilter)
            {
                case 0:
                {
                    this.chatPane.textWorld.htmlText = this.chatPane.textWorld.htmlText + ("<font color=\'#FF0000\'>" + param1.Result.Error.@Message + "</font>");
                    this.chatPane.textWorld.verticalScrollPosition = this.chatPane.textWorld.maxVerticalScrollPosition;
                    break;
                }
                case 1:
                {
                    this.chatPane.textGuild.htmlText = this.chatPane.textGuild.htmlText + ("<font color=\'#FF0000\'>" + param1.Result.Error.@Message + "</font>");
                    this.chatPane.textGuild.verticalScrollPosition = this.chatPane.textGuild.maxVerticalScrollPosition;
                    break;
                }
                case 99:
                {
                    this.chatPane.textPrivate.htmlText = this.chatPane.textPrivate.htmlText + ("<font color=\'#FF0000\'>" + param1.Result.Error.@Message + "</font>");
                    this.chatPane.textPrivate.verticalScrollPosition = this.chatPane.textPrivate.maxVerticalScrollPosition;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function onChatRefreshBack(param1:XML) : void
        {
            if (param1.Result.Error.@Code > 0)
            {
                this.onError(param1);
            }
            return;
        }// end function

        private function onChatSendBack(param1:XML) : void
        {
            if (param1.Result.Error.@Code > 0)
            {
                this.onError(param1);
            }
            else
            {
                this.chatPane.textInputBox.text = "";
            }
            this.onInputNotify();
            return;
        }// end function

        public function startChatListening() : void
        {
            this.chatRefreshTimer.start();
            this.fakeInputTimer.start();
            return;
        }// end function

        public function get currentChannel() : int
        {
            return this._currentChannel;
        }// end function

        public function set currentChannel(param1:int) : void
        {
            this._currentChannel = param1;
            switch(this._currentChannel)
            {
                case 0:
                {
                    this.chatPane.channelGong.gotoAndStop(1);
                    this.chatPane.channelSi.gotoAndStop(1);
                    this.chatPane.channelZong.gotoAndStop(2);
                    this.chatPane.friendSelect.visible = false;
                    this.chatPane.gotoBtn.visible = false;
                    this.chatPane.snsnBtn.visible = false;
                    this.chatPane.caonimaText.text = LocalConfig.LOCAL_LAN.ChatPane.WorldSayWarning.@Text;
                    break;
                }
                case 1:
                {
                    this.chatPane.channelGong.gotoAndStop(2);
                    this.chatPane.channelSi.gotoAndStop(1);
                    this.chatPane.channelZong.gotoAndStop(1);
                    this.chatPane.friendSelect.visible = false;
                    this.chatPane.gotoBtn.visible = false;
                    this.chatPane.snsnBtn.visible = false;
                    this.chatPane.caonimaText.text = "";
                    break;
                }
                case 99:
                {
                    this.chatPane.channelGong.gotoAndStop(1);
                    this.chatPane.channelSi.gotoAndStop(2);
                    this.chatPane.channelZong.gotoAndStop(1);
                    this.chatPane.friendSelect.visible = true;
                    this.chatPane.gotoBtn.visible = true;
                    this.chatPane.snsnBtn.visible = false;
                    this.chatPane.caonimaText.text = "";
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        public function get currentChannelFilter() : int
        {
            return this._currentChannelFilter;
        }// end function

        public function set currentChannelFilter(param1:int) : void
        {
            this._currentChannelFilter = param1;
            this.currentChannel = param1;
            switch(this._currentChannelFilter)
            {
                case 0:
                {
                    this.chatPane.channelGongTab.gotoAndStop(1);
                    this.chatPane.channelSiTab.gotoAndStop(1);
                    this.chatPane.channelZongTab.gotoAndStop(2);
                    this.chatPane.textWorld.visible = true;
                    this.chatPane.textGuild.visible = false;
                    this.chatPane.textPrivate.visible = false;
                    this.chatPane.textWorld.verticalScrollPosition = this.chatPane.textWorld.maxVerticalScrollPosition;
                    break;
                }
                case 1:
                {
                    this.chatPane.channelGongTab.gotoAndStop(2);
                    this.chatPane.channelSiTab.gotoAndStop(1);
                    this.chatPane.channelZongTab.gotoAndStop(1);
                    this.chatPane.textWorld.visible = false;
                    this.chatPane.textGuild.visible = true;
                    this.chatPane.textPrivate.visible = false;
                    this.chatPane.textGuild.verticalScrollPosition = this.chatPane.textGuild.maxVerticalScrollPosition;
                    break;
                }
                case 99:
                {
                    this.chatPane.channelGongTab.gotoAndStop(1);
                    this.chatPane.channelSiTab.gotoAndStop(2);
                    this.chatPane.channelZongTab.gotoAndStop(1);
                    this.chatPane.textWorld.visible = false;
                    this.chatPane.textGuild.visible = false;
                    this.chatPane.textPrivate.visible = true;
                    this.chatPane.textPrivate.verticalScrollPosition = this.chatPane.textPrivate.maxVerticalScrollPosition;
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function*/

        public static function getInstance() : ChatController
        {
            if (!cc)
            {
                cc = new ChatController;
            }
            return cc;
        }// end function

    }
}
