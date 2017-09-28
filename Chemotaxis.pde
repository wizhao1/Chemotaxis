//declare bacteria variables here
Bacteria [] Colony;
int backgroundColor;
boolean chase = true;

void setup()   
{
	backgroundColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	Colony = new Bacteria[20];
	size(300,300);
	background(backgroundColor);
	for(int i = 0; i<Colony.length; i++)
	{
		Colony[i] = new Bacteria((int)(Math.random()*200)+50,(int)(Math.random()*200)+50);
	}	
 	//initialize bacteria variables here   
}   
void mousePressed() 
{
	if(chase==true)
	{
		chase = false;
	} else 
	{
		chase = true;
	}
	backgroundColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	background(backgroundColor);

	for(int i = 0; i<Colony.length; i++)
	{
		Colony[i] = new Bacteria((int)(Math.random()*200)+50,(int)(Math.random()*200)+50);
	}
	redraw();

}



void draw()   
{    
	background(backgroundColor);
	for(int i = 0; i<Colony.length; i++)
	{
		Colony[i].show();
		Colony[i].move();
	}	
	//move and show the bacteria   
}  
class Bacteria    
{     
	//lots of java! 
	int myX, myY, bactColor;  
	Bacteria(int x, int y)
	{
		myX = x;
		myY = y;
		bactColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	void show()
	{
		fill(bactColor);
		ellipse(myX, myY, 20,20);
	}
	void move()
	{
		if(chase == true)
		{
			if(myX<mouseX)
			{
				myX = myX + (int)(Math.random()*5-2);
			} else 
			{
				myX = myX + (int)(Math.random()*5-3);
			}

			if(myY<mouseY)
			{
				myY = myY + (int)(Math.random()*5-2);
			} else 
			{
				myY = myY + (int)(Math.random()*5-3);
			}
		}

		if(chase == false)
		{
			if(myX<mouseX)
			{
				myX = myX + (int)(Math.random()*5-3);
			} else 
			{
				myX = myX + (int)(Math.random()*5-2);
			}

			if(myY<mouseY)
			{
				myY = myY + (int)(Math.random()*5-3);
			} else 
			{
				myY = myY + (int)(Math.random()*5-2);
			}
		}	




	}
}    