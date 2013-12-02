package project.view.skill
{
	import flash.utils.Dictionary;
	import starling.display.DisplayObject;
	
	/**
	 * ...
	 * @author bbjxl
	 */
	public class RegisteSkillClass
	{
		public static var totalSkllClass:Array;
		public static var _skillDic:Dictionary;
		public function RegisteSkillClass()
		{
			
		}
		public static function initData():void {
			//复活没有动画（对应的index=8）
			totalSkllClass = [skillName1, skillName2, skillName3,
								skillName4, skillName5, skillName6,
								skillName7, null, skillName9,
								skillName10, skillName11, skillName12,
								skillName13, skillName14, skillName15,
								skillName16, skillName17, skillName18,
								skillName19, skillName20, skillName21,
								skillName22, skillName23, skillName24,
								skillName25, skillName26, skillName27,
								skillName28, skillName29, skillName30,
								skillName31, skillName32, skillName33,
								skillName34, skillName35, skillName36,
								skillName37, skillName38, skillName39,
								skillName40, skillName41, skillName42,
								skillName43, skillName44, skillName45];
			
			_skillDic = new Dictionary();
			for (var i:uint = 1; i <= totalSkllClass.length; i++ ) {
				_skillDic["skillName" + i] = totalSkllClass[i - 1];
				}
			}
		
		public static function returnSkill(skillId:int):Class
		{
			return totalSkllClass[skillId-1];
		}
		
		/**
		 * 根据技能名返回技能类
		 * @param	skillName
		 * @return
		 */
		public static function returnClassByName(skillName:String=""):Class
		{
			return _skillDic[skillName];
		}
	
	}

}