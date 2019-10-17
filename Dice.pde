
void setup()
{
	size(500,500);
	textAlign(CENTER,CENTER);
	noLoop();
}
void draw()
{
	//your code here
	background(180);
	int diceSum = 0;

	for(int x = 27; x<500;x+=125){
		for(int y = 27; y<500;y+=125){
			Die og = new Die(x,y);
			diceSum+= og.rollNum;
			og.show();
			
		}
		
	}
		fill(0);
		text("You rolled: " + diceSum, 250, 480);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int rollNum;
	int  myX, myY;
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		//your code here
		
		rollNum = (int)(Math.random()*6 +1);
		
			
	}
	void show()
	{
		//your code here
		noStroke();
		fill(255);
		rect(myX,myY, 70,70,20);
		fill(140,170,220);

		if(rollNum == 1){
			ellipse(myX + 35, myY + 35, 15,15);

		}else if(rollNum == 2){
			ellipse(myX + 50, myY + 20, 15,15);
			ellipse(myX + 20, myY + 50, 15,15);
		
		}else if(rollNum == 3){
			ellipse(myX + 50, myY + 20, 15,15);
			ellipse(myX + 35, myY + 35, 15,15);
			ellipse(myX + 20, myY + 50, 15,15);
		}else if(rollNum == 4){
			ellipse(myX + 50, myY + 20, 15,15);
			ellipse(myX + 20, myY + 50, 15,15);
			ellipse(myX + 20, myY + 20, 15,15);
			ellipse(myX + 50, myY + 50, 15,15);
			
		}else if(rollNum == 5){
			ellipse(myX + 50, myY + 20, 15,15);
			ellipse(myX + 20, myY + 50, 15,15);
			ellipse(myX + 20, myY + 20, 15,15);
			ellipse(myX + 50, myY + 50, 15,15);
			ellipse(myX + 35, myY + 35, 15,15);

		}else if(rollNum == 6){
			ellipse(myX + 50, myY + 20, 15,15);
			ellipse(myX + 20, myY + 50, 15,15);
			ellipse(myX + 20, myY + 20, 15,15);
			ellipse(myX + 50, myY + 50, 15,15);
			ellipse(myX + 20, myY + 35, 15,15);
			ellipse(myX + 50, myY + 35, 15,15);
			

		}	

	}
}
