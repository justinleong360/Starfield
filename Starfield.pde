Particle [] bobs;
public void setup()
{
	size(500,500);
	bobs = new Particle[200];
	for(int i = 0; i<bobs.length; i++)
	{
		bobs[i] = new NormalParticle();
	}
	bobs[0] = new OddballParticle();
	bobs[1] = new JumboParticle();
}

public void draw()
{
	background(0,0,0);
	for(int i = 0; i < bobs.length; i++)
	{
		bobs[i].move();
		bobs[i].show();
		bobs[i].wrap();
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
	public void wrap()
	{
		if(dX>500 || dX<0 || dY>500 || dY<0)
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
	}
}

interface Particle
{
	public void show();
	public void move();
	public void wrap();
}

class OddballParticle implements Particle
{
	double theX, theY;
	int theColorR, theColorG, theColorB, theSize, theSpeed;
	OddballParticle()
	{
		theX = 125;
		theY = 125;
		theColorR = (int)(Math.random()*254)+1;
		theColorG = (int)(Math.random()*254)+1;
		theColorB = (int)(Math.random()*254)+1;
		theSize = 15;
		theSpeed = 5;
	}
	public void move()
	{
		if(theX<=375 && theY == 125)
		{
		theX = theX + theSpeed;
		}
		if(theX > 370 && theY<=375)
		{
		theY = theY + theSpeed;
		}
		if(theY==375 && theX>=125)
		{
		theX = theX - theSpeed;
		}
		if(theX == 125 && theY>=125)
		{
		theY = theY - theSpeed;
		}

	}
	public void show()
	{
		fill(theColorR,theColorG,theColorB);
		ellipse((float)theX,(float)theY,theSize,theSize);
	}
	public void wrap()
	{

	}
}

class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		dSize = 40;
	}
	public void wrap()
	{
		if(dX>500 || dX<0 || dY>500 || dY<0)
		{
			dX = 250;
			dY = 250;
			dTheta = (Math.random()*2*Math.PI);
			dSpeedX = (Math.random()*2)+1;
			dSpeedY = (Math.random()*2)+1;
			dColorR = (int)(Math.random()*254)+1;
			dColorG = (int)(Math.random()*254)+1;
			dColorB = (int)(Math.random()*254)+1;
		}
	}
}

