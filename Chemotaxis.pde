 //declare bacteria variables here   
 Bacteria[] colony;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	background(172);
 	colony = new Bacteria[1000];
 	for(int i = 0 ; i < colony.length; i++)
 		colony[i] = new Bacteria(150,150);
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	for(int i = 0 ; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, clr;  
 	Bacteria(int x, int y)
 	{
 		clr = color(50, 172, 50);
 		myX = x;
 		myY = y;

 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		fill(clr);
 		ellipse(myX, myY, 2,2);
 	}
 }    	