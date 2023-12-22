int[] num=new int[64];
PVector[] p=new PVector[64];
void setup()
{
  size(800,800);
}
void draw()
{
  int k=0;
  for(int x=0;x<width;x+=width/8)
  {
    for(int y=0;y<height;y+=height/8)
    { 
      p[k]=new PVector(x,y);     
      fill(255);
      rect(x,y,100,100);
      fill(0,0,200);
      text(num[k],x+50,y+50);
      k++;
    }
  } 
}
void mouseClicked()
{
  for(int i=0;i<64;i++)
  {
  if(dist(p[i].x+50,p[i].y+50,mouseX,mouseY)<50)
   {
    num[i]++;
   }
}
}
