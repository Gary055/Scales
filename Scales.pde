void setup() {
  noLoop();
  size(500,500);
  background(127);
}
void draw() {
for(int x = -500; x <= 1000; x+=50)
   for(int y = -100; y <= 200; y+=50)
      for(int a = 0; a <= 255; a+=Math.random()*255)
      for(int b = 0; b <= 255; b+=Math.random()*255)
      for(int c = 0; c <= 255; c+=Math.random()*255)
      scales(x,y,a,b,c);
}
void scales (int x, int y,int a,int b,int c) {
  noStroke();
  fill(a,b,c);
  bezier(x,y,250,y,250,y+100,-x+500,y+100);
  bezier(x,500-y,250,500-y,250,400-y,-x+500,400-y);
  ellipse(x,y,10,10);
  ellipse(x,500-y,10,10);
}
