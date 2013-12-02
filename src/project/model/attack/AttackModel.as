package project.model.attack 
{
	import com.adobe.serialization.json.JSON;
	import com.adobe.utils.ArrayUtil;
	import flash.utils.ByteArray;
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;
	import project.model.item.IModel;
	import project.utils.Base64;
	
	/**
	 * 战斗场景数据模型
	 * @author bbjxl 2012
	 */
	public class AttackModel extends DataModel implements IModel 
	{
		//----------------------容器---------------------------------
		
		//-----------------------UI---------------------------------
		
		//-----------------------数据---------------------------------
		/*attacker	Player	攻方玩家信息
		defender	Player	守方玩家信息
		rounds	array[Round]	游戏回合列表
		result	int	战斗结果：若为1则表示攻方获胜，为0则表示守方获胜。
		type	int	胜负类型：若为1则表示全军覆没，为0则表示士气全失。*/

		private var _attacker:AttackPlayerModel;//攻方信息
		private var _defender:AttackPlayerModel;//守方信息
		
		private var _rounds:Vector.<RoundModel>;//回合数据
		private var _result:int;
		private var _type:int;
		
		private var _skillUsed:Array;//这场战斗需要加载的技能ＩＤ
		//-----------------------事件--------------------------------
		private static var _attackModel:AttackModel=null;
		
		public function AttackModel() 
		{
			if (_attackModel != null) {
			 throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
			}
		}
		//--------------------------------------------------------
		/**
		 * 初始战斗数据
		 * @param	parma
		 */
		public function setData(parma:Object):void {
			//----------------测试用----------------------------------------
			var tempObj:Object = parma;
			var tempObj:Object = parma;
			//--------------------正式------------------------------------
			//var resultStr:String = (Base64.decode( parma.data.battle )); 
			//var tempObj:Object=com.adobe.serialization.json.JSON.decode(resultStr)
			//--------------------------------------------------------
			_result=(tempObj["result"] == null)?0:tempObj["result"];
			_type=(tempObj["type"] == null)?0:tempObj["type"];
			
			_attacker = null;
			_attacker = new AttackPlayerModel();
			_attacker.setData(tempObj["attacker"]);
			
			_defender= null;
			_defender = new AttackPlayerModel();
			_defender.setData(tempObj["defender"]);
			
			if (_rounds) {
				for (var j:String in _rounds) {
					_rounds[j].actions = null;
					}
				}
			_rounds= null;
			_rounds = new Vector.<RoundModel>();
			_skillUsed = new Array();
			var tempRoundsObj:Object = tempObj["rounds"];
			for (var i:String in tempRoundsObj) {
				var tempRound:RoundModel = new RoundModel();
				tempRound.setData(tempRoundsObj[i]);
				_skillUsed=_skillUsed.concat(tempRound.skillIdArr);
				_rounds.push(tempRound);
				}
				
			//去掉重复的技能ＩＤ
			_skillUsed = ArrayUtil.createUniqueCopy(_skillUsed);
			
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
			}
		
		
		//--------------------------------------------------------
		
		
		//--------------------------------------------------------
		/**
		 * 若为1则表示全军覆没，为0则表示士气全失。
		 */
		public function get type() : int
		 {
		   return _type;
		}// end function
		
		public function set type(param1:int) : void
		{
		  _type= param1;
		  return;
		}// end function
		/**
		 * 若为1则表示攻方获胜，为0则表示守方获胜。
		 */
		public function get result() : int
		 {
		   return _result;
		}// end function
		
		public function set result(param1:int) : void
		{
		  _result= param1;
		  return;
		}// end function
		public function get rounds() : Vector.<RoundModel>
		 {
		   return _rounds;
		}// end function
		
		public function set rounds(param1:Vector.<RoundModel>) : void
		{
		  _rounds= param1;
		  return;
		}// end function
		public function get defender() : AttackPlayerModel
		 {
		   return _defender;
		}// end function
		
		public function set defender(param1:AttackPlayerModel) : void
		{
		  _defender= param1;
		  return;
		}// end function
		
		public function get attacker() : AttackPlayerModel
		 {
		   return _attacker;
		}// end function
		
		public function set attacker(param1:AttackPlayerModel) : void
		{
		  _attacker= param1;
		  return;
		}// end function
		
		public function get skillUsed():Array 
		{
			return _skillUsed;
		}
		
		public function set skillUsed(value:Array):void 
		{
			_skillUsed = value;
		}
		//--------------------------------------------------------
		public static function getInstance() : AttackModel
        {
            if (_attackModel == null)
            {
                _attackModel = new AttackModel();
            }
            return _attackModel;
        }// end function
	}

}