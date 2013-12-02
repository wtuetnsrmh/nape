package project.core
{
	/*
	*描述：统一的请求服务端方法
	*
	*/
	import com.adobe.serialization.json.JSON;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.HTTPStatusEvent;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.utils.getTimer;
	
	import project.config.ApplicationConfig;
	import project.config.ErrorZhCn;
	import project.config.ItemCategory;
	import project.config.SpecialItemIdConfig;
	import project.controller.SMZTController;
	import project.debug.Debug;
	import project.debug.myDebug;
	import project.model.ItemBuilder;
	import project.model.ModelLocator;
	import project.model.data.PlayerData;
	import project.model.shop.GoodsModel;
	import project.model.shop.ShopModel;
	import project.utils.CustomTool;
	import project.utils.Reflection;
	import project.view.module.alert.AlertConfirmPane;
	import project.view.module.alert.AlertMasterPane;
	import project.view.module.alert.AlertSelectPane;
	import project.view.module.loading.LockScreen;
	import project.view.module.shop.PurchasePanel;

    public class DotNetServer extends EventDispatcher
    {

        public function DotNetServer()
        {
            throw new Error(ErrorZhCn.STATIC_ERROR_MESSAGE);
        }// end function


		/**
		 * 简单的请求命令
		*@param1 请求的方法
		*@param2 传给服务端的数据
		*@param3 ；回调函数
		*/
        public static function simpleLoad(param0:String, param2:URLVariables = null, param3:Function = null) : void
        {
            var urlLoader:URLLoader;
            var loaderHandler:Function;
            var action:String = param0;
			//增加检验码
			param2.code = ApplicationConfig._code;
            var parameters:URLVariables= param2;
            var callBack:Function = param3;
            loaderHandler = function (param1) : void
            {
                var resultObj:Object;
                var event:Event = param1;
                switch(event.type)
                {
                    case Event.COMPLETE:
                    {
                        try
                        {
                            resultObj = com.adobe.serialization.json.JSON.decode(urlLoader.data);
                        }
                        catch (error:Error)
                        {
                            trace("Error!");
                        }
                        if (resultObj.status == "0")
                        {
							if(callBack!=null){
                            callBack.call(null, resultObj);
							}
                        }else {
							Debug.log("resultObj.msg="+resultObj.msg)
							}
                        break;
                    }
                    case Event.OPEN:
                    {
                        break;
                    }
                    case ProgressEvent.PROGRESS:
                    {
                        break;
                    }
                    case SecurityErrorEvent.SECURITY_ERROR:
                    {
                        break;
                    }
                    case HTTPStatusEvent.HTTP_STATUS:
                    {
                        break;
                    }
                    case IOErrorEvent.IO_ERROR:
                    {
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                return;
            }// end function
            
            var configureListListeners:Function = function (param1:IEventDispatcher) : void
            {
                param1.addEventListener(Event.COMPLETE, loaderHandler);
                param1.addEventListener(Event.OPEN, loaderHandler);
                param1.addEventListener(ProgressEvent.PROGRESS, loaderHandler);
                param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR, loaderHandler);
                param1.addEventListener(HTTPStatusEvent.HTTP_STATUS, loaderHandler);
                param1.addEventListener(IOErrorEvent.IO_ERROR, loaderHandler);
                return;
            }// end function
            
            urlLoader = new URLLoader();
            var urlRequest:URLRequest = new URLRequest();
            var urlVaraibles:URLVariables = new URLVariables();
            configureListListeners(urlLoader);
            if (parameters == null)
            {
                parameters = new URLVariables();
            }
            parameters.rancode = getTimer();
            urlRequest.url = ModelLocator.getInstance().dynamicURL + action;
			trace(urlRequest.url)
            urlRequest.data = parameters;
            try
            {
                urlLoader.load(urlRequest);
            }
            catch (error:Error)
            {
                trace("Error!");
            }
            return;
        }// end function

		/**
		* 有需要根据返回值处理的请求 //状态码，若为0则表示请求成功，否则为相应错误编号。
		*@param1 请求的方法名
		*@param2 带的数据
		*@param3 回调方法
		*@param4 
		*@param5 "GET" OR "POST"
		*/
        public static function sendHTTPRequest(param0:String, param2:URLVariables = null, param3:Function = null, param4:Boolean = false, param5:String = "GET") : void
        {
            var urlLoader:URLLoader;
            var loaderHandler:Function;
            var action:String = param0;
			//增加检验码
			param2.code = ApplicationConfig._code;
            var parameters:URLVariables= param2;
            var callBack:Function = param3;
            var showBusy:Boolean = param4;
            var method:String = param5;
            loaderHandler = function (param1) : void
            {
                var resultObj:Object;
                //var nq:NewbieQuest;
                var i:int;
                var nNode:XML;
                var XMLDocumentClass:Class;
                var str:String;
                var sNode:XML;
                var event:Event = param1;
                switch(event.type)
                {
                    case Event.COMPLETE:
                    {
                        try
                        {
							//trace(urlLoader.data)

                            resultObj = com.adobe.serialization.json.JSON.decode(urlLoader.data);
                        }
                        catch (error:Error)
                        {
							
                            trace("Error!");
							return;
                        }
                        if (resultObj.status == "0")
                        {
							trace("与服务端通讯正常返回")
							//AlertConfirmPane.getInstance().type = 0;
                            //AlertConfirmPane.getInstance().showMessage(ErrorZhCn.ERROR_MESSAGE.Message.(@Id == resultObj.status).@Text);
                            //LockScreen.getInstance().hide();
							//AlertSelectPane.getInstance().showMessage(ErrorZhCn.ERROR_MESSAGE.Message.(@Id == resultObj.status).@Text);
							
							//--分享------------------------------------------------------
							if (resultObj.data.feed != null) {
								//Debug.log("返回的feedid:" + resultObj.data.feed);
								SMZTController.getInstance().feedInfor(resultObj.data.feed);
								}
							
							//--------------------------------------------------------
							if(callBack!=null){
								callBack.call(null, resultObj);
								}
                            /*if (resultXML.hasOwnProperty("Intro"))
                            {
                               
                                var _loc_3:int = 0;
                                var _loc_4:* = resultXML.Intro;
                                while (_loc_3 in _loc_4)
                                {
                                    
                                    nNode = _loc_4[_loc_3];
                                    if (i == 0)
                                    {
                                        nq = new NewbieQuest(int(nNode));
                                        nq.taskName = nNode.@Type;
                                    }
                                    i = (i + 1);
                                }
                                if (PlayerData.getInstance().currentNewbieQuest.questId != nq.questId)
                                {
                                    PlayerData.getInstance().currentNewbieQuest = nq;
                                }
                                NewbieQuestController.getInstance().checkNewbieTaskStatus();
                            }*/
                        }
                        else
                        {
							//今天免费进入次数已经达到上限，可以使用破魔匙进入(特殊处理)
							/*if (resultObj.status == 600) {
								AlertMasterPane.getInstance().showMessage(ErrorZhCn.ERROR_MESSAGE.Message.(@ID == resultObj.status).@Text, function okClickHandler():void {
									//提示购买破魔匙
									//====================================================
										//如果商场中没有数据则先加载商场数据
										var temp:PurchasePanel = PurchasePanel.getInstance();
										var tempGoodModel:GoodsModel;
										if (!ShopModel.getInstance().list.length > 0) {
											SMZTController.getInstance().getShopGoods(function ():void {
												//背包中没有招募令时提示购买
												temp.show(true);
												tempGoodModel = ShopModel.getInstance().findGoodModelByItemid(SpecialItemIdConfig.TOWER_SPOON);
												tempGoodModel.autoSetPriceType();
												temp.goodModel = tempGoodModel;
												temp = null;
												tempGoodModel = null;
												},true);
											}else {
												temp.show(true);
												tempGoodModel = ShopModel.getInstance().findGoodModelByItemid(SpecialItemIdConfig.TOWER_SPOON);
												tempGoodModel.autoSetPriceType();
												temp.goodModel = tempGoodModel;
												temp = null;
												tempGoodModel = null;
												}
									//====================================================
									})
								}else {
									AlertConfirmPane.getInstance().type = 0;
									AlertConfirmPane.getInstance().showMessage(ErrorZhCn.ERROR_MESSAGE.Message.(@ID == resultObj.status).@Text);
									}
							
                            LockScreen.getInstance().hide();
							
							myDebug.Console("msg=" + resultObj.msg);
							Debug.log(resultObj.msg);
							trace("Error =============> " + resultObj.msg);*/
                            trace(ErrorZhCn.ERROR_MESSAGE.Message.(@ID == resultObj.status).@Text)
                        }
                        break;
                    }
                    case Event.OPEN:
                    {
                        break;
                    }
                    case ProgressEvent.PROGRESS:
                    {
                        break;
                    }
                    case SecurityErrorEvent.SECURITY_ERROR:
                    {
                       /* AlertConfirmPane.getInstance().showMessage("安全沙箱冲突");
                        if (LockScreen.getInstance().isOpened)
                        {
                            LockScreen.getInstance().hide();
                        }*/
                        break;
                    }
                    case HTTPStatusEvent.HTTP_STATUS:
                    {
						//加载完成或者失败之前，会发出HTTP状态事件
                        break;
                    }
                    case IOErrorEvent.IO_ERROR:
                    { 
						/*AlertConfirmPane.getInstance().showMessage("I/O错误");
                        if (LockScreen.getInstance().isOpened)
                        {
                            LockScreen.getInstance().hide();
                        }*/
                        //SMZTSystemManager.getInstance().switchToAnotherDynamicURL();
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
                return;
            }// end function
            
			/**
		 *根据错误ID显示相应的错误提示信息 
		 * @param	param1
		 */
			/*private function alertErrorInforById(param:String="0"):void {
				AlertMasterPane.getInstance().showMessage(ErrorZhCn.ERROR_MESSAGE.Message.(@Id == param).@Text);
				}*/
			
            var configureListListeners:Function = function (param1:IEventDispatcher) : void
            {
                param1.addEventListener(Event.COMPLETE, loaderHandler);
                param1.addEventListener(Event.OPEN, loaderHandler);
                param1.addEventListener(ProgressEvent.PROGRESS, loaderHandler);
                param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR, loaderHandler);
                param1.addEventListener(HTTPStatusEvent.HTTP_STATUS, loaderHandler);
                param1.addEventListener(IOErrorEvent.IO_ERROR, loaderHandler);
                return;
            }// end function
            
            urlLoader = new URLLoader();
            var urlRequest:URLRequest = new URLRequest();
            var urlVaraibles:URLVariables = new URLVariables();
            configureListListeners(urlLoader);
            if (parameters == null)
            {
                parameters = new URLVariables();
            }
//            parameters.rancode = CustomTool.getRadomToken();
			//parameters.account = "test";
            urlRequest.url = ModelLocator.getInstance().dynamicURL + action;
			trace(urlRequest.url)
            urlRequest.method = method;
            urlRequest.data = parameters;
            try
            {
                SMZTSystemManager.getInstance().checkSleep(action);
                urlLoader.load(urlRequest);
            }
            catch (error:Error)
            {
                trace("Error!");
            }
            return;
        }// end function

    }
}
