package project.view.module.loading
{
	/*
	* 描述:加载进度条
	* 
	*/
    import project.core.SMZTResourceManager;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.text.*;
	
    public class LoadingView extends Sprite
    {
        private var loadingBar:Rectangle;
        private var loadingBarColour:uint = 12779519;
        private var progressText:TextField;
        private var statusText:TextField;
        private var backgroundColor:uint = 16777215;
        private var bytesLoaded:uint = 0;
        private var bytesExpected:uint = 1;
        private var fractionLoaded:Number = 0;

        public function LoadingView()
        {
            this.loadingBar = new Rectangle(200, 160, 400, 10);
            this.progressText = new TextField();
            this.statusText = new TextField();
            this.progressText.x = 200;
            this.progressText.y = 200;
            this.statusText.x = 200;
            this.statusText.y = 240;
            addChild(this.progressText);
            addChild(this.statusText);
            SMZTResourceManager.getInstance().addEventListener(ProgressEvent.PROGRESS, this.progressHandler);
            return;
        }// end function

        private function progressHandler(event:ProgressEvent) : void
        {
            this.bytesLoaded = event.bytesLoaded;
            this.bytesExpected = event.bytesTotal;
            this.fractionLoaded = Number(this.bytesLoaded) / Number(this.bytesExpected);
            this.drawProgress();
            return;
        }// end function

        private function drawProgress() : void
        {
            graphics.clear();
            graphics.beginFill(this.loadingBarColour, 1);
            graphics.drawRect(this.loadingBar.x, this.loadingBar.y, this.loadingBar.width * this.fractionLoaded, this.loadingBar.height);
            graphics.endFill();
            this.progressText.text = Math.round(this.bytesLoaded / 1024).toString() + "KB / " + Math.round(this.bytesExpected / 1024) + "KB";
            trace(this.progressText.text);
            return;
        }// end function

    }
}
