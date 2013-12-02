package project.model.attack 
{
	import flash.utils.Dictionary;
	/**
	 * 技能对应的库中技能资源ＩＤ
	 * @author bbjxl 2013
	 */
	public class AttackSkillDir extends Object 
	{
		public static var attackDir:Dictionary;
		public function AttackSkillDir() 
		{
			attackDir = new Dictionary();
			/*attackDir[192] = 192;
			attackDir[193] = 193;
			attackDir[220] = 220;
			attackDir[221] = 221;
			attackDir[222] = 222;
			attackDir[223] = 223;
			attackDir[224] = 224;
			attackDir[225] = 225;*/

			//----------------目标单向----------------------------------------
			attackDir[210] = 18;//飞行
			attackDir[203] = 6;//飞行
			attackDir[150] = 9;//感染
			attackDir[240] = 9;//感染
			
			attackDir[122] = 11;///攻击力上升
			attackDir[133] = 11;///攻击力上升
			attackDir[135] = 11;///攻击力上升
			attackDir[157] = 11;///攻击力上升
			attackDir[163] = 11;///攻击力上升
			attackDir[172] = 11;///攻击力上升
			attackDir[185] = 11;///攻击力上升
			attackDir[191] = 11;///攻击力上升
			attackDir[197] = 11;///攻击力上升
			attackDir[200] = 11;///攻击力上升
			attackDir[201] = 11;///攻击力上升
			attackDir[205] = 11;///攻击力上升
			attackDir[206] = 11;///攻击力上升
			attackDir[216] = 11;///攻击力上升
			attackDir[229] = 11;///攻击力上升
			attackDir[238] = 11;///攻击力上升
			attackDir[247] = 11;///攻击力上升
			attackDir[253] = 11;///攻击力上升
			attackDir[265] = 11;///攻击力上升
			
			attackDir[214] = 12;//攻击力下降
			attackDir[215] = 12;//攻击力下降
			attackDir[249] = 12;//攻击力下降
			attackDir[250] = 12;//攻击力下降
			attackDir[251] = 12;//攻击力下降
			
			attackDir[138] = 16;///加速
			attackDir[139] = 16;///加速
			attackDir[140] = 16;///加速
			attackDir[143] = 16;///加速
			
			attackDir[141] = 18;///减速
			attackDir[142] = 18;///减速
			attackDir[220] = 18;///减速
			
			attackDir[164] = 19;///狙击
			attackDir[165] = 19;///狙击
			
			attackDir[176] = 22;///落雷
			attackDir[177] = 22;///落雷
			attackDir[178] = 22;///落雷
			attackDir[179] = 22;///落雷
			attackDir[180] = 22;///落雷
			attackDir[181] = 22;///落雷
			attackDir[182] = 45;///狂雷天牢1
			attackDir[183] = 45;///狂雷天牢2
			attackDir[184] = 45;///狂雷天牢3
			
			attackDir[166] = 23;///猛毒
			attackDir[167] = 23;///猛毒
			attackDir[168] = 23;///猛毒
			attackDir[169] = 23;///猛毒
			attackDir[170] = 23;///猛毒
			
			attackDir[111] = 24;///秒杀
			attackDir[146] = 24;///秒杀
			attackDir[194] = 24;///秒杀
			attackDir[196] = 24;///秒杀
			attackDir[226] = 24;///秒杀
			attackDir[239] = 24;///秒杀
			attackDir[242] = 24;///秒杀
			attackDir[264] = 24;///秒杀
			attackDir[272] = 24;///秒杀
			attackDir[272] = 24;///秒杀
			
			attackDir[112] = 44;///准备区秒杀
			
			attackDir[202] = 30;///睡眠术
			attackDir[213] = 30;///睡眠术
			attackDir[246] = 30;///睡眠术
			
			attackDir[158] = 33;//体力上升
			attackDir[159] = 33;//体力上升
			attackDir[162] = 33;//体力上升
			attackDir[189] = 33;//体力上升
			attackDir[198] = 33;//体力上升
			attackDir[199] = 33;//体力上升
			attackDir[211] = 33;//体力上升
			attackDir[217] = 33;//体力上升
			attackDir[254] = 33;//体力上升
			attackDir[258] = 33;//体力上升
			attackDir[259] = 33;//体力上升
			attackDir[260] = 33;//体力上升
			attackDir[266] = 33;//体力上升
			attackDir[267] = 33;//体力上升
			
			attackDir[161] = 40;//折翼
			attackDir[268] = 41;//治疗
			attackDir[269] = 41;//治疗
			attackDir[270] = 41;//治疗
			attackDir[271] = 41;//治疗
			
			attackDir[124] = 42;//致盲
			attackDir[204] = 42;//致盲
			
			attackDir[212] = 43;//诅咒
			attackDir[245] = 43;//诅咒
			
			//-------------------墓地复活技能 技能不执行动画，由MOVETODEADFUC来显示相应的动画-------------------------------------
			attackDir[123] = 0;//复活术
			attackDir[144] = 0;//复活术
			attackDir[145] = 0;//复活术
			attackDir[273] = 0;//复活术
			
			
			//---------------目标双向-----------------------------------------
			attackDir[136] = 27;//遣返
			attackDir[186] = 21;//龙息
			attackDir[187] = 21;//龙息
			attackDir[188] = 21;//龙息
			
			attackDir[243] = 37;//吸血
			attackDir[244] = 37;//吸血
			
			attackDir[274] = 20;//灵魂炸裂
			attackDir[275] = 20;//灵魂炸裂
			attackDir[276] = 20;//灵魂炸裂
			
			//-----------------//目标指向,墓地（指向）---------------------------------------
			attackDir[106] = 3;//冰弹
			attackDir[107] = 3;//冰弹
			attackDir[108] = 3;//冰弹
			attackDir[109] = 3;//冰弹
			attackDir[147] =14;//火球
			attackDir[148] =14;//火球
			attackDir[149] =14;//火球
			attackDir[277] =14;//火球
			attackDir[171] =7;//复仇之魂 没有to，从墓发到from id这张卡
			
			attackDir[252] =31;//死灵能量 没有to，从墓发到from id这张卡
			attackDir[137] =36;//亡灵意志  有to，从墓发到to id这张卡
			
			
			//------------------------目标（位移）--------------------------------
			attackDir[152] =39;//饮血斩
			attackDir[153] =39;//饮血斩
			attackDir[154] =39;//饮血斩
			
			attackDir[118] =5;//反击
			attackDir[119] =5;//反击
			attackDir[120] =5;//反击
			
			//--------------------//自身------------------------------------
			attackDir[121] =6;//飞行
			
			attackDir[128] =10;//格挡
			attackDir[129] =10;//格挡
			attackDir[130] = 10;//格挡
			
			attackDir[104] =11;//攻击力上升
			attackDir[131] =11;//攻击力上升
			attackDir[132] =11;//攻击力上升
			attackDir[134] =11;//攻击力上升
			attackDir[174] =11;//攻击力上升
			attackDir[175] =11;//攻击力上升
			attackDir[227] =11;//攻击力上升
			attackDir[228] =11;//攻击力上升
			attackDir[241] =11;//攻击力上升
			attackDir[255] =11;//攻击力上升
			attackDir[256] =11;//攻击力上升
			attackDir[257] =11;//攻击力上升
			
			attackDir[173] =13;//鬼神
			attackDir[110] =17;//减伤1
			
			attackDir[117] =25;//魔法罩
			attackDir[116] =28;//伤害加深
			attackDir[151] =28;//伤害加深
			attackDir[156] =28;//伤害加深
			attackDir[195] =28;//伤害加深
			
			attackDir[219] =32;//泰坦附体
			attackDir[230] =33;//体力上升
			attackDir[231] =33;//体力上升
			attackDir[232] =33;//体力上升
			attackDir[190] =35;//天神下凡
			
			attackDir[218] =41;//治疗
			attackDir[261] =41;//治疗
			attackDir[262] =41;//治疗
			attackDir[263] =41;//治疗
			
			attackDir[248] =43;//诅咒
			
			//------------------//区域群体--------------------------------------
			attackDir[101] =1;//暴风雪
			attackDir[102] =2;//爆炎术
			attackDir[103] =2;//爆炎术
			attackDir[113] =4;//毒雾
			attackDir[114] =4;//毒雾
			attackDir[115] = 4;//毒雾
			
			attackDir[125] =29;//圣光
			attackDir[126] =29;//圣光
			attackDir[127] = 29;//圣光
			
			attackDir[207] =34;//天火
			attackDir[208] =34;//天火
			attackDir[209] =34;//天火
			
			
			//-------------------//全屏-------------------------------------
			attackDir[160] =38;//销毁
			//--------------------------------------------------------
			attackDir[233] =26;//末日审判
			
				
			attackDir[155] =15;////特殊
			
		}
		
	}

}