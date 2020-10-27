Clover bob;
void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(0);
  for(int i = 0; i < 100; i++)
  {
    bob = new Clover((int)((400*Math.random())+0.5),(int)((400*Math.random())+0.5), 2+(int)((3*Math.random())+0.5));
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
class Clover
{
  int numLeaves, myX, myY;
  Clover(int myX_, int myY_, int numLeaves_)//constructor
  {
    numLeaves = numLeaves_;
    myX = myX_;
    myY = myY_;
  }
  void show()
  {
     //I used some ugly math below
     //you can ignore it for now
    fill(0, 255, 0);
    stroke(0, 255, 0);
    float rot = random(PI*2);
    translate(myX, myY);
    rotate(rot);
    for (float i = 0; i < PI * 2; i+= PI*2/numLeaves)
    {     
      rotate(i);
      translate(6, 0);
      ellipse(0, 0, 10, 10);
      translate(-6, 0);
      rotate(-i);
    }
    rotate(-rot);
    translate(-myX, -myY );
  }
}
