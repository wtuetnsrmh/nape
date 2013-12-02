package khaos.utils
{
	public class Queue {  
		
		private var data:Object;  
		
		private var maxSize:int;  
		
		private var size:int;  
		
		private var front:int; 
		
		private var rear:int;  
		
		
	
		
		public function Queue(maxSize:int=99999) {  
			this.maxSize = maxSize;  
			this.data = {};  
			this.size= 0;  
			this.rear = 0;  
			this.front =0;  
			
		}  
		
		
		
		public function isEmpty():Boolean {  
			return this.size==0;  
		}  
		
		
		
		public function isFull():Boolean {  
			return this.size == maxSize;
		}
		
		
		
		public function get length():int
		{
			return this.size;
		}
		
		
		
		  
		
		public function push(data:Object):int {  
			if(isFull())  
				throw Error("队列溢出");
			this.size++;  
			this.data[rear]= data;  
			this.rear=(this.rear+1) % this.maxSize;
			return this.size;  
		}  
		
		
		
		public function pop():Object {  
			if(isEmpty())  
				throw Error("队列为空");
			var temp:Object = this.data[this.front];
			this.data[this.front] = null;
			this.size--;    
			this.front = (this.front + 1) % this.maxSize;  
			return temp;  
		}  
		
	}
	

}