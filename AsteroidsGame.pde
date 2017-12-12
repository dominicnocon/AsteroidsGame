//your variable declarations here
public Spaceship dom = new Spaceship();
public Stars[] sky = new Stars[99];
public ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
double dist1;

public void setup() 
	{
  		size (500,500);
  		background(200);

  		for (int i = 0; i< sky.length; i++)
  		{
  			sky[i] = new Stars();
  		}

  		for (int i = 0; i< 7; i++)
  		{
  			rocks.add( new Asteroid());
  		}
	}
public void draw() 
	{
		 background(200);
		 for (int i = 0; i< sky.length; i++)
		 {
		 	sky[i].show();
		 	
		 }
		 for (Asteroid ast : rocks)
		 {
			 ast.move();
		 	 ast.show();
		 	 dist1 = dist(ast.getX(), ast.getY(), dom.getX(), dom.getY());
		 	 if (dist1 < 20)
		 	 {
		 	 	rocks.remove(ast);
		 	 	break;
		 	 }


		 }
		 dom.show();
		 dom.move();
		 
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

