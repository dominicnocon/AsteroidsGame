class Asteroid extends Floater{
private int rotSpeed;
  Asteroid(){
    corners = 4;
    int [] xS = {-15, 15, 15, -15};
    int[] yS = {-15, -15, 15, 15};
    xCorners = xS;
    yCorners = yS;
    myColor = color(0);
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myDirectionX = (Math.random() * 5) - 2;
    myDirectionY = (Math.random() * 5) - 2;
    myPointDirection = (int)(Math.random() * 11) - 6;
    rotSpeed = (int)(Math.random() * 3);
  }
  public void setX(int x)                     {myCenterX = x;}
  public int getX()                           {return (int)myCenterX;}
  public void setY(int y)                     {myCenterY = y;}
  public int getY()                           {return (int)myCenterY;}
  public void setDirectionX(double x)         {myDirectionX = x;}
  public double getDirectionX()               {return myDirectionX;}
  public void setDirectionY(double y)         {myDirectionY = y;}
  public double getDirectionY()               {return myDirectionY;}
  public void setPointDirection(int degrees)  {myPointDirection = degrees;}
  public double getPointDirection()           {return myPointDirection;}
  public void move()                          { 
                                                rotate(rotSpeed);
                                                super.move();
                                              }
}