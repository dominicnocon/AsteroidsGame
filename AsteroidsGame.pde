//your variable declarations here
public Spaceship dom = new Spaceship();
public Stars[] sky = new Stars[100];

public void setup() 
	{
  		size (500,500);
  		background(200);

  		for (int i = 0; i< sky.length; i++)
  		{
  			sky[i] = new Stars();

  		}
	}
public void draw() 
	{
		 background(200);
		 for (int i = 0; i< sky.length; i++)
  		{
  			sky[i].show();

  		}

		 dom.move();
		 dom.show();
		 
	}
public void keyPressed()
	{
		if (key=='d') 	{dom.turn(15);}
		if (key=='a') 	{dom.turn(-15);}
		if (key=='w') 	{dom.accelerate(2);}
		if (key=='s') 	{dom.accelerate(-2);}
		if (key=='f')	{	
							dom.setDirectionX(0);
							dom.setDirectionY(0);  
							dom.setX ((int)(Math.random()*500));
							dom.setY ((int)(Math.random()*500)); 
							dom.setPointDirection(((int)(Math.random()*360)));
						}


	}

