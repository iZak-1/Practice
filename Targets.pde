Target one;
Target two;
void setup()
{
  noLoop();
}
void draw()
{
  background(197);
  one = new Target(25,50);
  two = new Target(75,50);
  one.show();
  two.show();
}
void mousePressed()
{
  redraw();
}
class Target
{
  int numRings, myX, myY;
  Target(int x, int y) //constructor initializes the 3 variables
  {
    numRings = (int)(2+(Math.random()+0.5));
    myX=x;
    myY=y;
  }
 void show()
  {
    int siz = 50;
   for(int i = 0; i < numRings; i++)
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX,myY,siz,siz);
      siz-=16;
    }
  }
}
