package project.controller 
{
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.MovieClip;
	import flash.geom.Point;
	import ApplictionConfig;
	import project.model.attack.ActionModel;
	import project.model.attack.AttackCardModel;
	import project.model.attack.SkillClassName;
	import project.utils.CustomTool;
	import project.utils.DepthManager;
	import project.utils.MovieClipController;
	import starling.utils.deg2rad;
	import starling.utils.rad2deg;
	import project.view.attack.skillTest;
	import project.view.skill.SkillBase;
	//import project.utils.Reflection;
	import project.view.attack.AttackPanel;
	import project.Cellcard.Card;
	import starling.animation.Transitions;
	import com.greensock.easing.*;
	import com.greensock.plugins.*;
	import com.greensock.*;
	import com.greensock.*;
	/**
	 * 技能控制类
	 * @author bbjxl 2012
	 */
	public class SkillController 
	{
		public static var _attackPanel:AttackPanel = AttackPanel.getInstance();
		public static var _skillControler:skillTest = skillTest.getInstance();
		
		public function SkillController() 
		{
			
		}
		
		/**
		 * 把战斗卡牌容器的坐标转成全局
		 */
		public static function MyLocalToGlobal(param:Point):Point {
			return _attackPanel.mc_cardArea.localToGlobal(param);
			}
		
		/**
		 * 目标位移－快速反击
		 * @param	timeLen
		 * @param	param
		 * @param	sillClassId
		 * @param	callback
		 */	
		public static function targetMoveSkill2(timeLen:Number,param:ActionModel,sillClassId:int, callback:Function = null):void {
			var mc:SkillBase;//攻击动画效果
			var card:Card = _attackPanel.cardMap[param.uid];
			var oldY:Number = card.y;
			DepthManager.bringToTop(card);
			var belog:String = param.uid.substr(0, 1);
			switch(belog) {
				case "d":
					//守方
					
						
						 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY+83, onComplete:function () : void
						{
							mc = _skillControler.skillFactery(sillClassId);
							
							mc.x = card.x;
							mc.y = oldY;
							//mc.flatten = true;
							_attackPanel.mc_skillArea.addChild(mc);
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY,delay:timeLen,onComplete:function () : void
							{
								if (callback != null) {
									callback();
									}
								
							 }});
							
						 }});
						
					break;
				case "a":
					//攻方
					
						
						Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY-83, onComplete:function () : void
						{
							mc =  _skillControler.skillFactery(sillClassId);
							
							mc.rotation =  deg2rad(180);//翻转
							mc.y = oldY+ApplictionConfig.CARD_HEIGHT/2;
							mc.x = card.x + ApplictionConfig.CARD_WIDTH / 2;
							//mc.cacheAsBitmap = true;
							_attackPanel.mc_skillArea.addChild(mc);
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY,delay:timeLen,onComplete:function () : void
							{
								if (callback != null) {
									callback();
									}
								
							 }});
						 }});
						
					break;
				default:
					break;
				}
			}
			
		/**
		 * 特殊 极光斩
		 * @param	timeLen
		 * @param	parma
		 * @param	sillClassId
		 * @param	Callback
		 */	
		public static function specialSkill(timeLen:Number,param:ActionModel,sillClassId:int, callback:Function = null):void {
			var mc:SkillBase;//攻击动画效果
			var card:Card = _attackPanel.cardMap[param.uid];
			var oldY:Number = card.y;
			DepthManager.bringToTop(card);
			var belog:String = param.uid.substr(0, 1);
			switch(belog) {
				case "d":
					//守方
					
						//近战
						 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY+176, onComplete:function () : void
						{
							mc =_skillControler.skillFactery(sillClassId);
							
							mc.x = card.x;
							mc.y = oldY;
							//mc.cacheAsBitmap = true;
							_attackPanel.mc_skillArea.addChild(mc);
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY,delay:timeLen,onComplete:function () : void
							{
								if (callback != null) {
									callback();
									}
								
							 }});
						 }});
						
					break;
				case "a":
					//攻方
					
						//近战
						Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY-176, onComplete:function () : void
						{
							mc = _skillControler.skillFactery(sillClassId);
							
							mc.rotation =  deg2rad(180);;//翻转
							mc.y = oldY+ApplictionConfig.CARD_HEIGHT/2;
							mc.x = card.x + ApplictionConfig.CARD_WIDTH / 2;
							//mc.cacheAsBitmap = true;
							_attackPanel.mc_skillArea.addChild(mc);
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY,delay:timeLen, onComplete:function () : void
							{
								if (callback != null) {
									callback();
									}
								
							 }});
						 }});
						
					break;
				default:
					break;
				}
			}
			
		/**
		 * 目标指向
		 * @param	timeLen
		 * @param	parma
		 * @param	callback
		 */
		public static function targetByDire(timeLen:Number,parma:ActionModel, sillClassId:int, Callback:Function = null) {
			var mc:SkillBase;
			mc = _skillControler.skillFactery(sillClassId,function callback():void {
				mc.removeFromParent();
				mc =  _skillControler.skillFactery(sillClassId,null,0,0,1);//Reflection.createInstance("skillName" + sillClassId + "_1");
				mc.x = startPoint.x;
				mc.y = startPoint.y;
				mc.rotation =  deg2rad(_angle);
				_attackPanel.mc_cardArea.addChild(mc);
				 Main.mStarling.juggler.tween(mc, timeLen, {x:targetCard.x + ApplictionConfig.CARD_WIDTH/4, y:targetCard.y + ApplictionConfig.CARD_HEIGHT / 4, onComplete:function () : void
				{
					mc.removeFromParent();
					//CustomTool.MyRemoveChild(_attackPanel.mc_cardArea, mc);
					mc = _skillControler.skillFactery(sillClassId,function callback():void {
						mc.removeFromParent();
						Callback();
						},0,0,2);//Reflection.createInstance("skillName" + sillClassId + "_2");
					mc.x = targetCard.x + ApplictionConfig.CARD_WIDTH/4;
					mc.y = targetCard.y + ApplictionConfig.CARD_HEIGHT / 4;
					//mc.rotation = _angle;
					_attackPanel.mc_cardArea.addChild(mc);
					
				 }});
				},0,0,0);//Reflection.createInstance("skillName" + sillClassId + "_0");
			//mc.cacheAsBitmap = true;
			var card:Card = _attackPanel.cardMap[parma.uid];
			var targetCard:Card = _attackPanel.cardMap[parma.to[0].uniqueId];
			var starX:Number = card.x + ApplictionConfig.CARD_WIDTH/4;
			var starY:Number = card.y + ApplictionConfig.CARD_HEIGHT / 4;
			trace("starX"+starX)
			var startPoint:Point = new Point(starX, starY);
			trace("startPoint"+startPoint.x)
			var targetX:Number = targetCard.x + ApplictionConfig.CARD_WIDTH/4;
			var targetY:Number = targetCard.y + ApplictionConfig.CARD_HEIGHT / 4;
			var targetPoint:Point = new Point(targetX, targetY);
			
			var _angle:Number = Math.atan2((targetPoint.y - startPoint.y), (targetPoint.x - startPoint.x))*180/Math.PI;
			mc.rotation = deg2rad(_angle);
			mc.x = startPoint.x;
			mc.y = startPoint.y;
			_attackPanel.mc_cardArea.addChild(mc);
			
			}
		
		/**
		 * 墓地指向,没有to，从墓发到from id这张卡
		 * 墓地指向,有to，从墓发到to id这张卡
		 * @param	skillName
		 * @param	loc
		 * @param	rotation
		 * @param	haveTo 是否有to
		 * @param	callback
		 */
		public static function deadTargetByDire(timeLen:Number,parma:ActionModel, sillClassId:int, Callback:Function = null,haveTo:Boolean=false) {
			var mc:SkillBase;
			mc = _skillControler.skillFactery(sillClassId,function callback():void {
				//CustomTool.MyRemoveChild(_attackPanel.mc_cardArea, mc);
				mc.removeFromParent();
				mc = _skillControler.skillFactery(sillClassId,null,0,0,1); 
				//mc.cacheAsBitmap = true;
				mc.x = startPoint.x;
				mc.y = startPoint.y;
				mc.rotation = deg2rad(_angle);
				_attackPanel.mc_cardArea.addChild(mc);
				 Main.mStarling.juggler.tween(mc, timeLen, {x:targetCard.x + ApplictionConfig.CARD_WIDTH/4, y:targetCard.y + ApplictionConfig.CARD_HEIGHT / 4, onComplete:function () : void
				{
					//CustomTool.MyRemoveChild(_attackPanel.mc_cardArea, mc);
					mc.removeFromParent();
					mc = _skillControler.skillFactery(sillClassId,function callback():void {
						CustomTool.MyRemoveChild(_attackPanel.mc_cardArea, mc);
						Callback();
						},0,0,2);
					//mc.cacheAsBitmap = true;
					mc.x = targetCard.x + ApplictionConfig.CARD_WIDTH/4;
					mc.y = targetCard.y + ApplictionConfig.CARD_HEIGHT / 4;
					//mc.rotation = _angle;
					_attackPanel.mc_cardArea.addChild(mc);
				 }});
				},0,0,0);//Reflection.createInstance("skillName" + sillClassId + "_0");
			//mc.cacheAsBitmap = true;
			//var card:Card = _attackPanel.cardMap[parma.uid];
			var targetCard:Card;
			if (haveTo) {
				targetCard=_attackPanel.cardMap[parma.to[0].uniqueId];
				}else {
					targetCard=_attackPanel.cardMap[parma.uid];
					}
			
			var starX:Number = 0;
			var starY:Number = 0;
			var belong:String = parma.uid.substr(0, 1);
			if (belong == "d") {
				starX = _attackPanel.opponentDeadAreaPoint.x+ApplictionConfig.SMALL_CARD_WH/2;
				starY = _attackPanel.opponentDeadAreaPoint.y+ApplictionConfig.SMALL_CARD_WH/2;
				}else if (belong == "a") {
					starX = _attackPanel.selfDeadAreaPoint.x+ApplictionConfig.SMALL_CARD_WH/2;
					starY = _attackPanel.selfDeadAreaPoint.y+ApplictionConfig.SMALL_CARD_WH/2;
					}
			//trace("starX"+starX)
			var startPoint:Point = new Point(starX, starY);
			//trace("startPoint"+startPoint.x)
			var targetX:Number = targetCard.x + ApplictionConfig.CARD_WIDTH/4;
			var targetY:Number = targetCard.y + ApplictionConfig.CARD_HEIGHT / 4;
			var targetPoint:Point = new Point(targetX, targetY);
			
			var _angle:Number = Math.atan2((targetPoint.y - startPoint.y), (targetPoint.x - startPoint.x))*180/Math.PI;
			//mc.rotation = _angle;
			mc.x = startPoint.x;
			mc.y = startPoint.y;
			_attackPanel.mc_cardArea.addChild(mc);
			}
			
		/**
		 * 指定位置播放动画效果
		 * @param	skillName技能名称
		 * @param	param 位置
		 * @param	rotation 是否旋转
		 */
		public static function playEffectByLoc(sillClassId:int, loc:Point, rotation:Boolean = false,callback:Function=null):void {
			var mc:SkillBase = _skillControler.skillFactery(sillClassId, callback, 0, 0, 0);//Reflection.createInstance(skillName);
			mc.x = loc.x;
			mc.y = loc.y;
			//mc.cacheAsBitmap = true;
			if (rotation) {
				mc.rotation = deg2rad(180);
				mc.y = loc.y+ApplictionConfig.CARD_HEIGHT/2;
				mc.x = loc.x+ApplictionConfig.CARD_WIDTH/2;
				}
			_attackPanel.mc_cardArea.addChild(mc);
			
			}
		/**
		 * 区域及全屏
		 * @param	skillName
		 * @param	loc
		 * @param	rotation
		 * @param	callback
		 */
		public static function playEffectByLocInSkill(sillClassId:int, loc:Point, rotation:Boolean = false,callback:Function=null):void {
			var mc:SkillBase = _skillControler.skillFactery(sillClassId, callback, 0, 0, 0);
			mc.x = loc.x;
			mc.y = loc.y;
			//mc.cacheAsBitmap = true;
			if (rotation) {
				mc.rotation =deg2rad(180);
				}
			_attackPanel.mc_skillArea.addChild(mc);
			/*if (callback != null) {
				//如果是多目标，则最后一个技能完了回调表示该动作结束
				MovieClipController.onMovieClipEnd(mc, callback);
				}*/
			}
		
		/**
		 * 自身
		 * @param	param
		 * @param	callback
		 */	
		public static function selfSkill(param:ActionModel,sillClassId:int,callback:Function=null):void {
			var card:Card = _attackPanel.cardMap[param.uid];
			playEffectByLoc(sillClassId, new Point(card.x,card.y), false, callback);
			}
			
		/**
		 * 全屏技能
		 * 以原点为坐标
		 * @param	param
		 * @param	callback
		 */	
		public static function fullScreenSkill(param:ActionModel, sillClassId:int, callback:Function = null):void {
			
			playEffectByLocInSkill(sillClassId, new Point(0, 0), false, callback);
			}
			
		/**
		 * 区域攻击
		 * 以战斗区域为坐标
		 * @param	param
		 * @param	callback
		 */
		public static function areaAttackSkill(param:ActionModel, sillClassId:int, callback:Function = null):void {
			var belong:String = param.uid.substr(0, 1);
			
			switch(param.act) {
				//以下几个技能特殊处理，显示效果是在发动方区域-圣光
				case 125:
					belong = (belong == "d")?"a":"d";
					break;
				case 126:
					belong = (belong == "d")?"a":"d";
					break;
				case 127:
					belong = (belong == "d")?"a":"d";
					break;
				}
			if (belong == "d") {
				//在守发动的技能，要在攻方显示效果
				playEffectByLocInSkill(sillClassId, _attackPanel.selfBattleInitPoint, false, callback);//战斗区坐标来放动画效果
				}else if(belong=="a") {
					playEffectByLocInSkill(sillClassId, _attackPanel.opponentBattleInitPoint, false, callback);
					}
			}
		
		/**
		 * 目标 有to  目标（双向）没to
		 * @param	param1
		 * @param	callback
		 * @param	doubledir是否双向
		 */
		public static function targetSkill(param:ActionModel, sillClassId:int, callback:Function = null,doubledir:Boolean=false):void {
			var _to:Vector.<AttackCardModel> = param.to;
			if (_to == null && !doubledir) {
				callback();
				return;
				}
			
			var _loc:Point = new Point();
			var i:int = 0;
			var _rotation:Boolean = false;//是否翻转
			var _belogn:String;	
			//--目标双向------------------------------------------------------
			if (doubledir) {
				_belogn = param.uid.substr(0, 1);
				DepthManager.bringToTop(_attackPanel.cardMap[param.uid]);
				_rotation = (_belogn == "d")?false:true;
				_loc.x = _attackPanel.cardMap[param.uid].x;
				_loc.y = _attackPanel.cardMap[param.uid].y;
				playEffectByLoc(sillClassId, _loc, _rotation, callback);
				return;
				}
			//--------------------------------------------------------	
				
			
			var _len:int = _to.length;
			if (_len > 0) {
				//置顶
				DepthManager.bringToTop(_attackPanel.cardMap[param.uid]);
				while (i < _len) {
					_belogn = _to[i].uniqueId.substr(0, 1);
					if (doubledir) {
						_rotation = (_belogn == "d")?true:false;
						_loc.x = _attackPanel.cardMap[param.uid].x;
						_loc.y = _attackPanel.cardMap[param.uid].y;
						}else {
							_rotation = false;
							_loc.x = _attackPanel.cardMap[_to[i].uniqueId].x;
							_loc.y = _attackPanel.cardMap[_to[i].uniqueId].y;
							}
					
					
					
					if (i == (_len - 1)) {
						//只在最后一个技能才发回调方法
						playEffectByLoc(sillClassId, _loc,_rotation,callback);
						}else {
							playEffectByLoc(sillClassId, _loc,_rotation);
							}
					i++;
					}
				
				}else{
					callback();
					return;
					}
			}
		
		/**
		 * 雕像效果
		 * @param	timeLen
		 * @param	param
		 * @param	callback
		 */
		public static function statueEffect(timeLen:Number,param1:ActionModel,callback:Function = null):void {
			var belong:String;
			if (param1.to) {
				if (param1.to.length > 0) {
					var morale:int = 0;
					var refMorale:int =param1.val;
					belong = param1.to[0].uniqueId.substr(0, 1);
					switch(belong) {
						case "d":
							//守方雕像
							morale = parseInt(_attackPanel.txt_opponent_morale.text);
							morale = morale + refMorale;
							_attackPanel.txt_opponent_morale.text = morale < 0 ? ("0") : String(morale);
							if (refMorale > 0)
							{
								_attackPanel.renderAddMorale(belong);
							}
							else
							{
								_attackPanel.renderReduceMorale(belong);
							}
							break;
						case "a":
							//攻方雕像
							morale = parseInt(_attackPanel.txt_self_morale.text);
							morale = morale + refMorale;
							_attackPanel.txt_self_morale.text = morale < 0 ? ("0") : String(morale);
							if (refMorale > 0)
							{
								_attackPanel.renderAddMorale(belong);
							}
							else
							{
								_attackPanel.renderReduceMorale(belong);
							}
							break;
						default:
							break;
						}
					if(callback!=null){
						CustomTool.delayRun(timeLen, callback);
						}
					
					}else {
						if (callback != null) {
							callback();
							}
						}
				}else {
					if (callback != null) {
						callback();
						}
					}
			
			
			}
			
			
		
		/**
		 * 被攻击时抖动
		 * @param	timeLen
		 * @param	param
		 * @param	callback
		 */
		public static function attackedFunc(timeLen:Number,param:ActionModel, callback:Function = null):void {
			var card:Card = _attackPanel.cardMap[param.uid];
			var tween:Tween = new Tween(card, timeLen*2, Transitions.EASE_IN_OUT);
				  tween.moveTo(card.x+3,card.y+3);
				  tween.moveTo(card.x-6,card.y-6);
				  tween.moveTo(card.x + 3, card.y + 3);
				  Starling.juggler.add(tween);
				  tween.onComplete=function () : void
				{
					if (callback != null) {
						callback();
						}
				 }
				Main.mStarling.juggler.add(tween); 
			}
		
		/**
		 * 飞行闪避，闪避
		 * @param	timeLen
		 */
		public static function flyMissFunc(timeLen:Number,param:ActionModel, callback:Function = null):void {
			var card:Card = _attackPanel.cardMap[param.uid];
			var belong:String = param.uid.substr(0, 1);
			var tween:Tween = new Tween(card, timeLen * 2, Transitions.EASE_IN_OUT);
			var tempY:Number = card.y;
			switch(belong) {
				case "d":
					tween.animate("y", tempY - 30);
					tween.animate("y", tempY+30);
					Starling.juggler.add(tween);
					tween.onComplete=function () : void
						{
							if (callback != null) {
								callback();
								}
						 }
					/*timeline.append( new TweenLite(card, timeLen, {y:"-30"}));
					timeline.append( new TweenLite(card, timeLen, {y:"30",delay:timeLen, onComplete:function () : void
						{
							if (callback != null) {
								callback();
								}
						 }}));*/
					break;
				case "a":
					tween.animate("y", tempY + 30);
					tween.animate("y", tempY -30);
					Starling.juggler.add(tween);
					tween.onComplete=function () : void
						{
							if (callback != null) {
								callback();
								}
						 }
					/*timeline.append( new TweenLite(card, timeLen, {y:"30"}));
					timeline.append( new TweenLite(card, timeLen, {y:"-30",delay:timeLen, onComplete:function () : void
						{
							if (callback != null) {
								callback();
								}
						 }}));*/
					break;
				default:
					break;
				}
			
			Main.mStarling.juggler.add(tween); 
			}

		/**
		 * 
		 * 普通攻击
		 * @param 动画时长单位
		 * @param 攻击的卡
		 * @param 攻方还是守方攻击
		 * @param 攻击的类型：近战还是远程
		 * @param 动作结束回调
		 */
		public static function attackFun1(timeLen:Number,card:Card, param1:String, attackMode:int = 1, callback:Function = null):void {
			var mc:MovieClip;//攻击动画效果
			var oldY:Number = card.y;
			DepthManager.bringToTop(card);
			switch(param1) {
				case "d":
					//守方
					if (attackMode == 1) {
						
						//近战
						 Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY+146, onComplete:function () : void
						{
							mc = ApplictionConfig.creaMC("attackUI",SkillClassName.ATTACK_FUN1_1);
							//mc.cacheAsBitmap = true;
							mc.x = card.x+47.5;
							mc.y = 416.95;
							_attackPanel.mc_cardArea.addChild(mc);
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY,delay:timeLen>>1,onComplete:function () : void
							{
								mc.removeFromParent();
								if (callback != null) {
									callback();
									}
								
							 }});
						 }});
						}else {
							//远程
							var tween:Tween = new Tween(card,timeLen);
							tween.animate("y", card.y - 10);
							Starling.juggler.add(tween);
							tween.onComplete=function () : void
							{
								mc = ApplictionConfig.creaMC("attackUI",SkillClassName.ATTACK_FUN1_2);
								//mc.cacheAsBitmap = true;
								mc.x=card.x+(card.width-mc.width)/2-mc.width/2-10;
								mc.y = card.y + ApplictionConfig.CARD_HEIGHT / 2 - 20;
								mc.rotation = deg2rad(180);
								_attackPanel.mc_cardArea.addChild(mc);
								
								Main.mStarling.juggler.tween(card, timeLen, { y:card.y+10,delay:timeLen>>1,onComplete:function () : void
								{
									mc.removeFromParent();
									if (callback != null) {
										callback();
										}
									
								 }});
								}
							
							/*var timeline:TimelineLite = new TimelineLite();
							timeline.append( new TweenLite(card, timeLen, {y:"-10", onComplete:function () : void
								{
									mc = ApplictionConfig.creaMC("attackUI",SkillClassName.ATTACK_FUN1_2);
									mc.cacheAsBitmap = true;
									mc.x=card.x+(card.width-mc.width)/2-mc.width/2-10;
									mc.y = card.y + ApplictionConfig.CARD_HEIGHT / 2 - 20;
									mc.rotation = 180;
									_attackPanel.mc_cardArea.addChild(mc);
									
									}}) );
							timeline.append( new TweenLite(card, timeLen, {y:"10", onComplete:function () : void
								{
									if (callback != null) {
										callback();
										}
									
									}}) );*/
							}
					break;
				case "a":
					//攻方
					if (attackMode == 1) {
						//近战
						Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY-146, onComplete:function () : void
						{
							mc =ApplictionConfig.creaMC("attackUI",SkillClassName.ATTACK_FUN1_1);
							//mc.cacheAsBitmap = true;
							mc.rotation = deg2rad(180);//翻转
							mc.x = card.x+47.5;
							mc.y = 258.85;
							_attackPanel.mc_cardArea.addChild(mc);
							Main.mStarling.juggler.tween(card, timeLen, {transition: Transitions.EASE_IN_OUT, y:oldY,delay:timeLen>>1, onComplete:function () : void
							{
								mc.removeFromParent();
								if (callback != null) {
									callback();
									}
								
							 }});
						 }});
						}else {
							//远程
							var tween:Tween = new Tween(card,timeLen);
							tween.animate("y", card.y + 10);
							Starling.juggler.add(tween);
							tween.onComplete=function () : void
							{
								mc = ApplictionConfig.creaMC("attackUI",SkillClassName.ATTACK_FUN1_2);
								//mc.cacheAsBitmap = true;
								mc.x=card.x+(card.width-mc.width)/2-mc.width/2-10;
								mc.y = card.y + ApplictionConfig.CARD_HEIGHT / 2 - 20;
								
								_attackPanel.mc_cardArea.addChild(mc);
								
								Main.mStarling.juggler.tween(card, timeLen, { y:card.y-10,delay:timeLen>>1,onComplete:function () : void
								{
									mc.removeFromParent();
									if (callback != null) {
										callback();
										}
									
								 }});
								}
							
							/*var timeline2:TimelineLite = new TimelineLite();
							timeline2.append( new TweenLite(card, timeLen, {y:"10", onComplete:function () : void
								{
									mc = Reflection.createInstance(SkillClassName.ATTACK_FUN1_2);
									mc.cacheAsBitmap = true;
									mc.x=card.x+(card.width-mc.width)/2-mc.width/2-10;
									mc.y=card.y+20;
									_attackPanel.mc_cardArea.addChild(mc);
									
									}}) );
							timeline2.append( new TweenLite(card, timeLen, {y:"-10", onComplete:function () : void
								{
									if (callback != null) {
										callback();
										}
									
									}}) );*/
							}
					break;
				default:
					break;
				}
			}
		
		
	}

}