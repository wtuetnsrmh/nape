package project.model.cultivation
{
	import com.adobe.utils.ArrayUtil;
	import project.events.SMZTDataChangeEvent;
	import project.model.data.BagData;
	import project.model.data.DataModel;
	import project.model.item.ItemModel;
	
	/**
	 * 合成界面模型
	 * @author bbjxl 2013
	 */
	public class MixPanelModel extends DataModel
	{
		private var _mixExps:Vector.<MixExpressModel>;
		
		public function MixPanelModel()
		{
		
		}
		/**
		 * 更新背包中的公式数据
		 */
		public function updata():void
		{
			var mixs:Vector.<ItemModel> = BagData.getInstance().mixs;
			/*if (_mixExps!=null) {
				if (judgestUpdata()) {
					//需要更新
					_mixExps = new Vector.<MixExpressModel>();
					for (var j:String in mixs) {
						_mixExps.push(new MixExpressModel(mixs[j]));
						}
					mixs = null;
					dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
					return;
					}
				}*/
			_mixExps = new Vector.<MixExpressModel>();
			for (var i:String in mixs) {
				_mixExps.push(new MixExpressModel(mixs[i]));
				}
			mixs = null;
			dispatchEvent(new SMZTDataChangeEvent(SMZTDataChangeEvent.ON_DATA_CHANGE));
		}
		/**
		 * 判断背包中的公式是否更新-(不用的理由：背包数据改变就要更新，因为有可能打开卡包从而要更新卡的数量)
		 */
		/*private function judgestUpdata():Boolean 
		{
			var mixs:Vector.<ItemModel> = BagData.getInstance().mixs;
			var findLen:int = 0;//找到的次数
			for (var i:int = 0; i < mixs.length; i++ ) {
				for (var j:int =_mixExps.length-1; j >-1 ; --j ) {
					if (mixs[i].itemId == _mixExps[j].itemId) {
						_mixExps.splice(j, 1);
						findLen++;
						continue;
						}
					}
				}
			if (findLen == mixs.length && _mixExps.length == 0) {
				return false;
				}
			return true;
		}*/
		
		public function get mixExps():Vector.<MixExpressModel>
		{
			return _mixExps;
		}
		
		public function set mixExps(value:Vector.<MixExpressModel>):void
		{
			_mixExps = value;
		}
	
	}

}