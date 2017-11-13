class Spaceship extends Floater  
{   
	
	public Spaceship()
	{
		corners 			= 3;
		xCorners 			= new int[corners];
		yCorners 			= new int[corners];
		xCorners 			= new int[corners];
		xCorners[0]			= -6;
		yCorners[0]			= -6;
		xCorners[1]			=  12;
		yCorners[1]			=  0;
		xCorners[2]			= -6;
		yCorners[2]			=  6;
		myColor 			=  0;   
  		myCenterX 			= 250;
  		myCenterY   		= 250;
 		myDirectionX		= 0;
 		myDirectionY		= 0;
		myPointDirection	= 270;


	}
	public void move ()
	{  
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;

		if(myCenterX >width)    { myCenterX = 0;}
		else if (myCenterX<0)   { myCenterX = width;}
		if(myCenterY >height)   { myCenterY = 0;}
		else if (myCenterY < 0) { myCenterY = height;}
	}

	public void accelerate (double dAmount)
	{ 
     
   	 	double dRadians = myPointDirection*(Math.PI/180);
     	myDirectionX += ((dAmount) * Math.cos(dRadians));
     	myDirectionY += ((dAmount) * Math.sin(dRadians));
     	if (Math.abs(dAmount) >= 5) {dAmount = 5;}
    }

	void turn(int nDegreesOfRotation)
	{
  		myPointDirection+=nDegreesOfRotation;
	}

  	public void setX(int x) 					{myCenterX = x;}
	public int getX()							{return (int)myCenterX;}
	public void setY(int y)						{myCenterY = y;}
	public int getY()							{return (int)myCenterY;}
	public void setDirectionX(double x)			{myDirectionX = x;}
	public double getDirectionX()				{return myDirectionX;}
	public void setDirectionY(double y)			{myDirectionY = y;}
	public double getDirectionY() 				{return myDirectionY;}
	public void setPointDirection(int degrees)	{myPointDirection = degrees;}
	public double getPointDirection()			{return myPointDirection;}
}