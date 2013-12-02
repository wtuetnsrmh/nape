package project.model.arena
{
	/**
	*描述：竞技声数据模型
	*
	*/
	import project.config.ErrorZhCn;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.DataModel;

    public class ArenaModel extends DataModel
    {
       
       //----------------------容器---------------------------------
	   
	   //-----------------------UI---------------------------------
	   
	   //-----------------------数据---------------------------------
	   private var _arenas:Vector.<ArenaSlotModel>;//八个擂主信息
	   private var _arenaId:int;//竞技场编号
	   private var _championId:int;//擂主玩家编号
	   //-----------------------事件--------------------------------
        private static var _arenaModel:ArenaModel;

        public function ArenaModel()
        {
            if (_arenaModel != null)
            {
                throw new Error(ErrorZhCn.SINGLETON_ERROR_MESSAGE);
            }
            return;
        }// end function

       

		/**
		 * 
		 * 设置数据
		 * @param	param1
		 */
        public function setArenaData(param1:Object) : void
        {
			if (_arenas) {
				_arenas = null;
				}
			_arenas = new Vector.<ArenaSlotModel>();
            
			for (var i:String in param1) {
				var temp:ArenaSlotModel = new ArenaSlotModel();
				temp.setData(param1[i]);
				_arenas.push(temp);
				temp = null;
				}
            dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
            return;
        }// end function
		
		public function get arenaId() : int
		 {
		   return _arenaId;
		}// end function
		
		public function set arenaId(param1:int) : void
		{
		  _arenaId= param1;
		  return;
		}// end function
		public function get championId() : int
		 {
		   return _championId;
		}// end function
		
		public function set championId(param1:int) : void
		{
		  _championId= param1;
		  return;
		}// end function
		public function get arenas() : Vector.<ArenaSlotModel>
		 {
		   return _arenas;
		}// end function
		
		public function set arenas(param1:Vector.<ArenaSlotModel>) : void
		{
		  _arenas= param1;
		  return;
		}// end function
      
        public static function getInstance() : ArenaModel
        {
            if (_arenaModel == null)
            {
                _arenaModel = new ArenaModel();
            }
            return _arenaModel;
        }// end function

    }
}
