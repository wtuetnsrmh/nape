package scrolerPage 
{
	import project.base.BaseSprite;
	import flash.display3D.textures.Texture;
	import flash.geom.Point;
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.events.TouchEvent;
	
	/**
	 * 滑动分页控制器
	 * @author bbjxl 2013
	 */
	public class ControlerPage extends DisplayObjectContainer 
	{
		//----------------------容器---------------------------------
		private var _moveSp:DisplayObjectContainer;//内容容器
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		private var _cell:uint = 0;
		private var _row:uint = 0;
		private var _data:Vector.<IPage>;//所以数据
		private var _currentPage:uint = 0;//当前页
		private var _maxPage:uint = 0;//总共几页
		
		private var _initPoint:Point;//初始位置
		private var _touchPoint:Point;//触摸到的位置
		//-----------------------事件--------------------------------
		public function ControlerPage() 
		{
			initUI();
			_moveSp = new DisplayObjectContainer();
			addChild(_moveSp);
		}
		/**
		 * 初始化ＵＩ界面
		 */
		private function initUI():void 
		{
			
		}
		/**
		 * 渲染
		 */
		public function render():void {
			
			}
		/**
		 * 侦听ＴＯＵＣＨ
		 */
		public function startListenr():void {
			_initPoint
			stage.addEventListener(TouchEvent.TOUCH, touchHandler);
			}
			
		private function touchHandler(e:TouchEvent):void 
		{
			
			}
		/**
		 * 初始化数据
		 * @param	r
		 * @param	c
		 * @param	dataV
		 */
		public function initData(r:uint,c:uint,dataV:Vector.<BaseSprite>):void {
			if (dataV == null && dataV.length = 0) return;
			
			_maxPage= Math.ceil(dataV.length / (r*c));
			
			_currentPage = 1;
			
			resetUI();
			}
			
		/**
		 * 重新生成要显示的页
		 */
		private function resetUI():void 
		{
			if (_currentPage == 1) {
				
				}
		}
		
			
		public function get currentPage():uint 
		{
			return _currentPage;
		}
		
		public function set currentPage(value:uint):void 
		{
			_currentPage = value;
		}
		
	}

}