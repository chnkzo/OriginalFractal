public void setup()
{
  size(800,800);
}
public void draw()
{
  background(0);
  myFractal(400,400,300);
  myFractal(400,125,100);
  myFractal(400,675,100);
  myFractal(125,400,100);
  myFractal(675,400,100);
}
public void myFractal(int x, int y, int siz)
{
  rectMode(CENTER);
   rect(x,y,siz/2,siz/2);
  if(siz > 5)
  {
    //myFractal(x-siz/2,y,siz/2);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y+siz/2,siz/2);
    myFractal(x-siz/2,y,siz/2);
    myFractal(x,y-siz/2,siz/2);
  }
}
