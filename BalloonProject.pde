Balloon bob;
void setup()  
{
  size(1000, 1000);
  
    bob = new Balloon(mouseX, mouseY,10,(int)(255*Math.random()),(int)(255*Math.random()),(int)(255*Math.random()),(int)(255*Math.random()));
}

void draw()  
{
  background(0);
  if(bob.myX-bob.mySize<0||bob.myX+bob.mySize>width||bob.myY-bob.mySize<0||bob.myY+bob.mySize>height){
    bob.pop();
  }
  bob.show();
  bob.inflate();
}
class Balloon // The Balloon object!
{
  int myX, myY, mySize,r,g,b,myBeta;     // Delare member variables
  Balloon(int x_, int y_, int size_,int R_, int G_, int B_, int Beta_)   // The Balloon Constructor Method!
  {                            // Initialize Member variables below
    mySize = size_;
    myX = x_;
    myY = y_;
    r=R_;
    g=G_;
    b=B_;
    myBeta=Beta_;
  }
                            // Inflate method 
  void inflate ()
  {
    if(dist(mouseX,mouseY,myX,myY)<=mySize)
    {
      mySize += 1;
    }
  }
                            // Show method 
  void show()
  {
    fill(r, g, b, myBeta);
    ellipse(myX, myY, 2*mySize, 2*mySize);
  }
  void pop(){
    mySize = 0;
  }
}

void mouseClicked(){
  bob = new Balloon(mouseX, mouseY,10,(int)(255*Math.random()),(int)(255*Math.random()),(int)(255*Math.random()),(int)(255*Math.random()));
}
