class Stars 
{
	private int dX, dY;
 	public Stars()
 	{
		dX = (int)(Math.random() * 500);
		dY = (int)(Math.random() * 500);
	}
	public void show()
	{
		fill(0);
		
		ellipse(dX, dY, 2,2);
	}

}