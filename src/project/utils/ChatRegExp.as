package project.utils
{

    public class ChatRegExp extends Object
    {
        public static var faceRep:RegExp = /(\[[0-3][0-6]\])""(\[[0-3][0-6]\])/g;
        public static var urlRep:RegExp = /^[a-zA-z]+:\/\/[^\s]*""^[a-zA-z]+:\/\/[^\s]*/;
        public static var itemRep:RegExp = /(\{([0-9|;|-]*\|)*([0-9|;|-]*)\})""(\{([0-9|;|-]*\|)*([0-9|;|-]*)\})/g;
        public static var priRep:RegExp = /(\/\S*\s)""(\/\S*\s)/g;
        public static var gmRep:RegExp = /(\/gmcode\s)""(\/gmcode\s)/g;
        public static var debugRep:RegExp = /(\/debug\s*)""(\/debug\s*)/g;
        public static var LineRep:RegExp = /\{n\}""\{n\}/gi;
        public static const place:String = "　";
        public static var sendLen:int = 58;

        public function ChatRegExp()
        {
            return;
        }// end function

    }
}
