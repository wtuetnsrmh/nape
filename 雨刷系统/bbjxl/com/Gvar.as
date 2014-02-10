package bbjxl.com{
	/**
	作者：被逼叫小乱
	全局变量
	www.bbjxl.com/Blog
	**/
	import bbjxl.com.content.four.OnlineOrOfflineChannel;
	import bbjxl.com.display.StartKey;
	import bbjxl.com.event.TotalEventDispather;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Stage;
	import adobe.utils.CustomActions;
	import flash.events.EventDispatcher;
	import be.wellconsidered.services.WebService;
	import be.wellconsidered.services.Operation;
	import be.wellconsidered.services.events.OperationEvent;
	import bbjxl.com.content.four.PopFrame;

	public dynamic class Gvar extends Sprite {
		public var ExamStartTime:String="";//考试开始时间
		public var ExamOverTime:String="";//考试结束时间
		public var UserId:String="1";//用户ID
		public var Examid:String="1";//考试ID
		public var AuthKey:String="up5wmr552yx5cc45bx5ojrrt";
		public var CoursewareId:String="2";//课程ID
		public static var WebServerUrl:String ="" ;// "http://fz.qcyy.zjtie.edu.cn/Interface/WebServices/FlashWebService.asmx?wsdl";
		public var ws:WebService = new WebService(WebServerUrl);
		
		public var toolXML:XML;
		
		public static  const testUrl:String="";//../
		
		public static  const STAGE_X:uint=1003;
		public static  const STAGE_Y:uint=752;
		
		//部件认识中的模拟考试中的题目文字宽度
		public var FIRST_MNKS_OPTIONS_WIDTH:uint=650;
		//部件认识中的模拟考试中的图片宽度,高度
		public static  const FIRST_MNKS_IMAGE_WIDTH:uint=200;
		public static  const FIRST_MNKS_IMAGE_HEIGHT:uint=165;
		//部件认识中的模拟考试中的文字选项中每道题目的间隔
		public static  const FIRST_MNKS_TI_GAP:uint=40;
		//部件认识中的模拟考试中的文字选项中每道选项的间隔
		public static  const FIRST_MNKS_OTRIONS_GAP:uint=20;
		//部件认识中的模拟考试中的文字选项中每道选项的间隔
		public static  const FIRST_MNKS_MAXPAGE:uint=4;
		//部件认识中的模拟考试中有几个选项
		public static  const FIRST_MNKS_OTRINSNUM:uint=4;
		
		//部件认识中的模拟考试中题库
		private var _FIRST_MNK_TI:Array = new Array();
		
		//---------------------------------------------------
		public static var _dispatcher:TotalEventDispather = new TotalEventDispather();
		public static var _TotallDispather:TotallDispather = TotallDispather.getInstance();
		
		//---------------------------------------------------
		//各部件的中文名称
		public static const DHKG:String = "点火开关";
		public static const YSJDQ:String = "雨刮继电器";
		public static const YSDJ:String = "雨刷电机";
		public static const PSDJ:String = "喷水电机";
		public static const YSKG:String = "雨刮开关";
		
		//连线----------------------------------------------------------------//
		public var barrayNoContactScore:Number = 20;//电瓶地线连接/未最后连接扣的分数
		public var comparedNoOpration:Number = 15;//连接完成后未正常运行检验扣的分数
		public var _rightLineArr:Array=new Array();//连对的线数组
		public var S_MNKS_BARRAY:Boolean = false;//蓄电池是否已经接电,每进入考试都要重置为false
		private var _S_MNKS_TIMER:uint;//模拟考试的时间
		private var _S_MNKS_ERROERSCORE:uint;//模拟考试中错一题的分数
		private var _S_MNKS_ERROERNUM:uint;//错的次数
		public var S_MNKS_PASSSCORE:uint;//考试通过成绩
		public static  const lineErrorCnName:Array = [ { _cn:"接地", _pointId:[1, 16,22] }, { _cn:"蓄电池", _pointId:[2, 3] }, { _cn:"保险丝1", _pointId:[6, 7] }
		,{_cn:"保险丝2", _pointId:[4, 5] }, { _cn:"点火开关", _pointId:[8, 9] }, { _cn:"保险丝3", _pointId:[10, 11] }, { _cn:"继电器", _pointId:[12, 13,14,15] }
		,{_cn:"档位开关", _pointId:[17, 18] }, { _cn:"启动机", _pointId:[19, 20, 21] } ];//各连接点相应的中文部件
		
		public var _lineXml:XML;//所有线的数据
		
		//性能检测----------------------------------------------------------------//
		//扣分参数
		public static  const _T_Total_Jeom:Number = 20;//操作规范（最多扣20分）
		public static  const _T_Un_Jeom:Number = 2;//万用表使用错误
		//public static  const _T_Confirm_Jeom:Number = 5;//排故前未运行确认故障
		
		//故障菜单中选项的宽度
		public static  const THREE_RMPX_OTRINSWIDTH:uint=100;
		private var _T_RMPX_PARTED:Boolean=false;//部件是否已经有点出故障菜单
		private var _T_MNKS_PARTED:Boolean=false;//部件是否已经有点出故障菜单
		//各部件用于转换点的ID
		public static  const _T_RMPX_ysjdq:Array=new Array({_id:1,pinId:17},{_id:2,pinId:16},{_id:3,pinId:15},{_id:4,pinId:13},{_id:5,pinId:30},{_id:6,pinId:12},{_id:7,pinId:14});
		public static  const _T_RMPX_ysdj:Array=new Array({_id:1,pinId:21},{_id:2,pinId:18},{_id:3,pinId:19},{_id:4,pinId:20},{_id:5,pinId:22},{_id:6,pinId:29});
		public static  const _T_RMPX_psdj:Array=new Array({_id:1,pinId:23},{_id:2,pinId:24},{_id:2,pinId:28});
		public static  const _T_RMPX_yskg:Array=new Array({_id:1,pinId:6},{_id:2,pinId:7},{_id:3,pinId:8},{_id:4,pinId:9},{_id:5,pinId:10},{_id:6,pinId:11});
		
		private var _T_EXAM_RM:Boolean=false;//用于判断当前显示的表的选项数，默认为入门培训时的全部选项
		private var _T_EXAM_OVER:Boolean=false;//是否是考试结束，结束时根据这个值来判断是否显示分数列
		
		//public var _T_PartRightXmlArr:Array=new Array();//所有部件正确的XML
		public var _T_PartRightXml:XML=new XML();//所有部件正确的XML
		
		/*故障诊断
		 * 
		 * */
		public var _St_RV:XML = new XML();//点火开关为st状态时的电阻电压表数据
		public var _Off_RV:XML = new XML();//点火开关为off状态时的电阻电压表数据
		public var _IG_RV:XML = new XML();//点火开关为ig,on状态时的电阻电压表数据
		public var _currentFaultId:uint;//当前选的故障ID
		public var _symptomsLib:XML = new XML();//症状库
		public var _symptomsTable:XML = new XML();//症状表
		public var _reasonLib:XML = new XML();//原因库
		public var _reasonTable:XML = new XML();//原因表
		public static const _popFrameWidth:uint = 600;//测试记录表宽度
		public static const _popFrameHeight:uint = 300;//高度
		public var _currentFaultXml:XML = new XML();//当前故障的XML数据
		public var _repairFaultFlag:Boolean = false;//是否已经在排故状态下点图上部件选对故障点
		public var _currentFaultPartName_FaultId:String;//当前的故障部件－故障点（用于显示第五步中的正确答案）
		public var _repairedAndStart:Boolean = false;//排故后是否打点火开关确认判断
		public var _UniversalErrorArr:Array = new Array();//万用表使用错误记录
		public var _endExamScore:Number = 0;//总分
		
		public var _currentSymptomsPartArr:Array = new Array();//当前选的症状部件数组
		public var _currentSymptomsArr:Array = new Array();//当前症状描述的数组
		
		public var _onlineOrOffline:OnlineOrOfflineChannel = new OnlineOrOfflineChannel();//在线离线通道
		
		//----------------------------------------------------------------//
		public var _startKey:StartKey = new StartKey();//全局点火开关
		
		private static  var _singleton:Boolean=true;
        private static  var _instance:Gvar;
		
		public var _stage:Stage;
		//===================================================================================================================//
		public function get T_EXAM_OVER():Boolean
		{
			return _T_EXAM_OVER;
		}
		public function set T_EXAM_OVER(_value:Boolean):void
		{
			_T_EXAM_OVER = _value;
		}
		public function get T_EXAM_RM():Boolean
		{
			return _T_EXAM_RM;
		}
		public function set T_EXAM_RM(_value:Boolean):void
		{
			_T_EXAM_RM = _value;
		}
		public function get T_MNKS_PARTED():Boolean
		{
			return _T_MNKS_PARTED;
		}
		public function set T_MNKS_PARTED(_value:Boolean):void
		{
			_T_MNKS_PARTED = _value;
		}
		public function get T_RMPX_PARTED():Boolean
		{
			return _T_RMPX_PARTED;
		}
		public function set T_RMPX_PARTED(_value:Boolean):void
		{
			_T_RMPX_PARTED = _value;
		}
		public function get S_MNKS_ERROERNUM():uint
		{
			return _S_MNKS_ERROERNUM;
		}
		public function set S_MNKS_ERROERNUM(_value:uint):void
		{
			_S_MNKS_ERROERNUM = _value;
		}
		public function get S_MNKS_ERROERSCORE():uint
		{
			return _S_MNKS_ERROERSCORE;
		}
		public function set S_MNKS_ERROERSCORE(_value:uint):void
		{
			_S_MNKS_ERROERSCORE = _value;
		}
		
		public function get S_MNKS_TIMER():uint
		{
			return _S_MNKS_TIMER;
		}
		public function set S_MNKS_TIMER(_value:uint):void
		{
			_S_MNKS_TIMER = _value;
		}
		
		public function get FIRST_MNK_TI():Array
		{
			return _FIRST_MNK_TI;
		}
		public function set FIRST_MNK_TI(_value:Array):void
		{
			_FIRST_MNK_TI = _value;
		}
		//===================================================================================================================//
		public function Gvar(){
			 if (_singleton) {
                 throw new Error("只能用getInstance()来获取实例");
             }

			}
		 public static function getInstance() {
            if (!_instance) {
                _singleton=false;
                _instance=new Gvar();
              //  _singleton=true;
				
            }
            return _instance;
        }
		//--------------------------------------------------------------------------------------------------------------------//
		//根据点火开关的状态返回相应的电阻电压表数据(第四部分)
		public function returnRVData(_state:uint = 0):XML {
			switch(_state) {
				case 0:
				return _St_RV;
				break;
				case 1:
				return _IG_RV;
				break;
				case 2:
				return _Off_RV;
				break;
				}
			return _St_RV;
			
			}
		//--------------------------------------------------------------------------------------------------------------------//
		/*public static function onFault(e:OperationEvent):void
		{
			trace("ws error");
		}*/
		//===================================================================================================================//
	}
}