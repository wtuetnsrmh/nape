package bbjxl.com.content.three{
	/**
	作者：被逼叫小乱
	保险丝
	www.bbjxl.com/Blog
	**/
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.BitmapFilterQuality;
	import flash.display.DisplayObject;
	import bbjxl.com.Gvar;

	import flash.filters.GlowFilter;
	import bbjxl.com.ui.CommonlyClass;
	import bbjxl.com.event.FormCellNextEvent;
	import flash.geom.Rectangle;

	public class RMPX_BXS_FORM extends Sprite {
		protected var formHead:RMPX_FormHead=new RMPX_FormHead();//表头
		protected var formHeadSp:Sprite=new Sprite();//表头容器
		protected var formBodySp:Sprite=new Sprite();//表的内容容器
		public var formBody:RMPX_BXS_FormBody;//表身---私有，因为每个部件表格中的这部分不一样
		protected var _thisXml:XML=new XML();//表身内容XML
		protected var _allXml:XML=new XML();
		
		
		private static  var _singleton:Boolean=true;
        private static  var _instance:RMPX_BXS_FORM;
		//===================================================================================================================//
		public function set allXml(_id:XML):void {
			_allXml=_id;
		}
		public function get allXml():XML {
			return _allXml;
		}
		//===================================================================================================================//
		public function RMPX_BXS_FORM() {
			if (_singleton) {
                 throw new Error("只能用getInstance()来获取实例");
             }
			
		}//End Fun
		
		 public static function getInstance() {
            if (!_instance) {
                _singleton=false;
                _instance=new RMPX_BXS_FORM();
              //  _singleton=true;
				
            }
            return _instance;
        }
		
		//建立表
		public function CreaFoem(_xml:XML,optionId:uint):void{
			this.buttonMode=true;
			addChild(formHeadSp);
			addChild(formBodySp);
			_allXml=_xml;
			_thisXml=XML(_allXml.child(optionId).toXMLString());
			creaFormHead();
			creaFormbody();
			
			addFilte(this);
			}
		
		//考试最后结果时
		public function examOver(opid:uint):void{
			CommonlyClass.cleaall(formHeadSp);
			formHead=new RMPX_FormHead();
			formHeadSp.addChild(formHead);
			formBody = null;
			formBody=new RMPX_BXS_FormBody(XML(_allXml.child(opid).toXMLString()),opid);
			//trace(_allXml)
			CommonlyClass.cleaall(formBodySp);
			formBodySp.addChild(formBody);
			formBodySp.y=formHead.y+formHead.height;
			}
		
		//更新
		public function updata(opid:uint):void {
			formBody = null;
			formBody=new RMPX_BXS_FormBody(XML(_allXml.child(opid).toXMLString()));
			//trace(_allXml)
			CommonlyClass.cleaall(formBodySp);
			formBodySp.addChild(formBody);
			formBodySp.y=formHead.y+formHead.height;
			}
		
		//修改指定单元格
		public function modify(pid:uint,tid:uint,cellId:uint,cellContent:*=0,flash:uint=0):void{
			formBody.modify(pid,tid,cellId,cellContent,flash);
			}
		
		//表身
		protected function creaFormbody():void{
			formBody=new RMPX_BXS_FormBody(_thisXml);
			formBodySp.addChild(formBody);
			formBodySp.y=formHead.y+formHead.height;
			//formBody.addEventListener(FormCellNextEvent.FORMCOMMONCHANGEEVENT,formCellNextEventHanlder);
			}
		
		/*//下拉条选择变化
		private function formCellNextEventHanlder(e:FormCellNextEvent):void{
			trace(e.parentId+"/"+e.thisid+"/"+e.thisSelect)
			}*/
			
		//表头
		protected function creaFormHead():void{
			formHeadSp.addChild(formHead);
			/*this.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
			this.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
			this.addEventListener(MouseEvent.ROLL_OUT,mouseUpHandler);*/
			}
		
		//表格点击可以拖动表格
		protected function mouseDownHandler(e:MouseEvent):void{
			var tempRect:Rectangle=new Rectangle(-this.width/2,-this.height/2,Gvar.STAGE_X,Gvar.STAGE_Y);
			this.startDrag(false,tempRect);
			}
		//停止拖动
		protected function mouseUpHandler(e:MouseEvent):void{
			this.stopDrag();
			}
		
		//增加滤镜效果
		protected function addFilte(_obj:DisplayObject):void
		{
			//创建滤镜实例
			var color:Number = 0x333333;
			var alpha:Number = 0.5;
			var blurX:Number = 5;
			var blurY:Number = 5;
			var strength:Number = 6;
			var inner:Boolean = false;
			var knockout:Boolean = false;
			var quality:Number = BitmapFilterQuality.HIGH;
			var glowFilter:GlowFilter=new GlowFilter(color,
			  alpha,
			  blurX,
			  blurY,
			  strength,
			  quality,
			  inner,
			  knockout);
			//创建滤镜数组,通过将滤镜作为参数传递给Array()构造函数,
			//将该滤镜添加到数组中
			var filtersArray:Array = new Array(glowFilter);
			//将滤镜数组分配给显示对象以便应用滤镜
			_obj.filters = filtersArray;

		}
		//--------------------------------------------------------------------------------------------------------------------//
		
		//===================================================================================================================//
	}
}