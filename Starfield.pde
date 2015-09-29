NormalParticle [] bobs;
public void setup()
{
	background(0,0,0);
	size(500,500);
	bobs = new NormalParticle[50];
	for(int i = 0; i<bobs.length; i++)
	{
		bobs[i] = new NormalParticle();
	}
}

public void draw()
{
	for(int i = 0; i < bobs.length; i++)
	{
		bobs[i].move();
		bobs[i].show();
	}
}

class NormalParticle implements Particle
{
	double dX, dY, dTheta, dSpeedX, dSpeedY;
	int dColorR, dColorG, dColorB, dSize;
	NormalParticle()
	{
		dX = 250;
		dY = 250;
		dTheta = (Math.random()*2*Math.PI);
		dSpeedX = (Math.random()*2)+1;
		dSpeedY = (Math.random()*2)+1;
		dColorR = (int)(Math.random()*254)+1;
		dColorG = (int)(Math.random()*254)+1;
		dColorB = (int)(Math.random()*254)+1;
		dSize = (int)(Math.random()*5)+5;
	}
	public void move()
	{
		dX = dX + Math.cos(dTheta) * dSpeedX;
		dY = dY + Math.sin(dTheta) * dSpeedY;
	}
	public void show()
	{
		fill(dColorR,dColorG,dColorB);
		ellipse((float)dX,(float)dY,dSize,dSize);
	}
}

interface Particle
{
	public void show();
	public void move();
}

class OddballParticle implements Particle
{
	
}

class JumboParticle //uses inheritance
{
	//your code here
}

