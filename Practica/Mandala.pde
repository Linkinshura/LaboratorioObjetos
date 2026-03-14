int Xprev;
int Yprev;

void setup(){
  size(500,500);
  background(255,255,255);
}

void draw(){

line(mouseX, mouseY, Xprev, Yprev);

line(width-mouseX, mouseY, width-Xprev, Yprev);

line(mouseX, height-mouseY, Xprev, width-Yprev);

line(width-mouseX, height-mouseY, width-Xprev, height-Yprev);

 Xprev=mouseX;
  Yprev=mouseY;
}
