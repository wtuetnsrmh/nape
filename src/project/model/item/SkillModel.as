package project.model.item 
{
	import flash.utils.getTimer;
	
	import project.config.ItemConfig;
	
	import starling.events.EventDispatcher;

	/**
	 * 一般卡牌有1-3个技能 卡牌牌面只显示技能名称 背面显示技能说明
	 * @author bbjxl
	 */
	public class SkillModel extends EventDispatcher implements ISkill
	{
		private var _name:String;//技能名称
		private var _description:String;//技能描述
		private var _id:int;//技能ID
		public function SkillModel() 
		{
			
		}
		public function get description() : String
		 {
		   return _description;
		}// end function
		
		public function set description(param1:String) : void
		{
		  _description= param1;
		  return;
		}// end function
		
		public function get name() : String
		 {
		   return _name;
		}// end function
		
		public function set name(param1:String) : void
		{
		  _name= param1;
		  return;
		}// end function
		
		public function get id() : int
		 {
		   return _id;
		}// end function
		
		public function set id(param1:int) : void
		{
		  _id = param1;
		 // var a:int=getTimer();
		  var temp:XML;
		  for each(temp in ItemConfig.SKILL_CONFIG.Skill){
		  if(temp.@ID==param1){
		  _name=temp.@Name;
		  _description=temp.@Description;
		  temp=null;
		  //trace("--------------------------------------"+(getTimer()-a))
		  return;
		  }
		  }
		 /* _name = ItemConfig.SKILL_CONFIG.Skill.(@ID == param1).@Name;
		  _description = ItemConfig.SKILL_CONFIG.Skill.(@ID == param1).@Description;
		  return;*/
		}// end function
		
	}

}