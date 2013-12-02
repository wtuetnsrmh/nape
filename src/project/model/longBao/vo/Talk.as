package project.model.longBao.vo 
{
	import project.model.data.DataModel;
	import project.model.ModelLocator;
	
	/**
	 * ...
	 * @author bbjxl 2013
	 */
	public class Talk extends DataModel 
	{
		/*name	string	人物名称
			leftPic	string	左边图像
			rightPic	string	右边图像
			text	string	对白内容
			map	string	地图名称
			actor	int	当前发言者 0-无 1-左边 2-右边
			battle	int	是否发生战斗1-是 0-否

		*/
		
		private var _name:String;
		private var _leftPic:String;
		private var _rightPic:String;
		private var _text:String;
		private var _mapName:String;
		private var _actor:int=0;
		private var _battle:Boolean = false;
		private var _showed:Boolean = false;//是否已经显示过了
		public function Talk(param:Object) 
		{
			_mapName = (param["map"] == null)?"":param["map"];
			_actor = (param["actor"] == null)?0:param["actor"];
			_name = (param["name"] == null)?"":param["name"];
			_leftPic = (param["leftPic"] == "")?null:ModelLocator.getInstance().staticURL+"images/story/characters/"+param["leftPic"];
			_rightPic = (param["rightPic"] == "")?null:ModelLocator.getInstance().staticURL+"images/story/characters/"+param["rightPic"];
			_text = (param["text"] == null)?"":param["text"];
			_battle = (param["battle"] == 1)?true:false;
		}
		
		public function get name():String 
		{
			return _name;
		}
		
		public function set name(value:String):void 
		{
			_name = value;
		}
		
		public function get leftPic():String 
		{
			return _leftPic;
		}
		
		public function set leftPic(value:String):void 
		{
			_leftPic = value;
		}
		
		public function get rightPic():String 
		{
			return _rightPic;
		}
		
		public function set rightPic(value:String):void 
		{
			_rightPic = value;
		}
		
		public function get text():String 
		{
			return _text;
		}
		
		public function set text(value:String):void 
		{
			_text = value;
		}
		
		public function get battle():Boolean 
		{
			return _battle;
		}
		
		public function set battle(value:Boolean):void 
		{
			_battle = value;
		}
		
		public function get actor():int 
		{
			return _actor;
		}
		
		public function set actor(value:int):void 
		{
			_actor = value;
		}
		
		public function get mapName():String 
		{
			return _mapName;
		}
		
		public function set mapName(value:String):void 
		{
			_mapName = value;
		}
		
		public function get showed():Boolean 
		{
			return _showed;
		}
		
		public function set showed(value:Boolean):void 
		{
			_showed = value;
		}
		
	}

}