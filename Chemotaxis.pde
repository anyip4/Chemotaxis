 Bacteria [] bob;
int numberClicked = 0;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(600,600);
 	bob = new Bacteria[1000];
 	for (int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria((int)(Math.random()*3)+300,(int)(Math.random()*3)+300);
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(200);
	if(numberClicked == 0){	
	 	for(int i = 0; i < bob.length; i++){
	 		bob[i].move();
	    	bob[i].show();
	  	} 
	 }else{
	 	for(int i = 0; i < bob.length; i++){
	 		bob[i].move2();
	    	bob[i].show();
	  	}
	 }
 	//move and show the bacteria   

 }  

 void mouseClicked(){
 	
 	if(numberClicked == 1){
 		numberClicked = 0;
 	}else{
 		numberClicked++;
 	}
 }
 class Bacteria    
 {     
 	int myX, myY;

 	Bacteria(int x , int y){
 		myX = x;
 		myY = y; 
 	}
 	void move(){
 		if(mouseX > myX){
 			myX = myX + (int)(Math.random()*5) + 2;
 		}else{
 			myX = myX - (int)(Math.random()*5) - 2;
 		}
 		if(mouseY > myY){
 			myY = myY + (int)(Math.random()*5) + 2;
 		}else{
 			myY = myY - (int)(Math.random()*5) - 2;
 		}
 	}

 	void move2(){
 		if(mouseX < myX){
 			myX = myX + (int)(Math.random()*5) + 2;
 		}else{
 			myX = myX - (int)(Math.random()*5) - 2;
 		}
 		if(mouseY < myY){
 			myY = myY + (int)(Math.random()*5) + 2;
 		}else{
 			myY = myY - (int)(Math.random()*5) - 2;
 		}
 	}
 	void show(){
 		stroke(mouseX/5 + myX/5,mouseY/5 + myY/5,mouseX/5 + myX/5);
		ellipse(myX, myY, 10, 10);
 	}   
 }    