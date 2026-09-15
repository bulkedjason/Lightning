int startX=150;
int startY=0;
int endX=150;
int endY=150;
int ran;
int ran2;

void setup()
{
  size(300,300);
  background(0,0,50);
}

void draw()
{
  noStroke();
  fill(0,0,50,40);
  rect(0,0,300,300);

  while(endY<300)
  {
    ran=(int)(Math.random()*40)-20;
    ran2=(int)(Math.random()*10);
    endX=startX+ran;
    endY=startY+ran2;

    stroke(255,255,0,80);
    strokeWeight(8);
    line(startX,startY,endX,endY);

    stroke(255,255,200);
    strokeWeight(3);
    line(startX,startY,endX,endY);

    startX=endX;
    startY=endY;
  }
}

void mousePressed()
{
  startX=(int)(Math.random()*300);
  startY=0;
  endX=startX;
  endY=150;
}
