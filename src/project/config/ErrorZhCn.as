package project.config
{
	/*
	* 描述：错误的中文描述
	* 
	*/
    public class ErrorZhCn extends Object
    {
        public static const SINGLETON_ERROR_MESSAGE:String = "无法获取实例!";
        public static const STATIC_ERROR_MESSAGE:String = "静态无法实例化!";
		
		public static var ERROR_MESSAGE:XML;//所有的服务端返回的错误对应文件

        public function ErrorZhCn()
        {
            return;
        }// end function

    }
}
