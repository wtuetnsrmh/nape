package project.view.layout
{
	/*
	* 描述：网格容器
	* 
	*/
    
	import project.base.BaseSprite;
	
	import starling.display.DisplayObject;

    public class BaseGridContainer extends BaseSprite
    {
        private var _line:int;
        private var _column:int;
        private var _gap:int = 10;
        private var _cellWidth:int;
        private var _cellHeight:int;
        private var measureColumn:int = 1;
        private var measureLine:int = 1;

		/**
		 * 网格容器
		 * @param1	行
		 * @param2	列
		 * @param3	间隔
		 * @param4	单元格宽
		 * @param5	单元格高
		 */
        public function BaseGridContainer(param1:int = 5, param2:int = 4, param3:int = 1, param4:int = 40, param5:int = 40)
        {
            this._line = param1;
            this._column = param2;
            this._gap = param3;
            this._cellWidth = param4;
            this._cellHeight = param5;
            
            return;
        }// end function

        public function appendChild(param1:DisplayObject) : void
        {
//			this.unflatten();
            if (this.measureLine > this.line)
            {
                return;
            }
            param1.x = (this.measureColumn - 1) * this._cellWidth + (this.measureColumn - 1) * this.gap;
            param1.y = (this.measureLine - 1) * this._cellHeight + (this.measureLine - 1) * this.gap;
            addChild(param1);
            if (this.measureColumn < this.column)
            {
                measureColumn++;
            }
            else
            {
                this.measureColumn = 1;
                if (this.measureLine <= this.line)
                {
                   measureLine++;
                }
                else
                {
                    this.measureLine = 1;
                }
            }
//			this.flatten();
            return;
        }// end function

        public function removeAll(dispose:Boolean=false) : void
        {
           this.removeFromParent(dispose);
            this.measureColumn = 1;
            this.measureLine = 1;
            return;
        }// end function

        public function get line() : int
        {
            return this._line;
        }// end function

        public function set line(param1:int) : void
        {
            this._line = param1;
            return;
        }// end function

        public function get column() : int
        {
            return this._column;
        }// end function

        public function set column(param1:int) : void
        {
            this._column = param1;
            return;
        }// end function

        public function get gap() : int
        {
            return this._gap;
        }// end function

        public function set gap(param1:int) : void
        {
            this._gap = param1;
            return;
        }// end function

        public function get cellWidth() : int
        {
            return this._cellWidth;
        }// end function

        public function set cellWidth(param1:int) : void
        {
            this._cellWidth = param1;
            return;
        }// end function

        public function get cellHeight() : int
        {
            return this._cellHeight;
        }// end function

        public function set cellHeight(param1:int) : void
        {
            this._cellHeight = param1;
            return;
        }// end function

    }
}
