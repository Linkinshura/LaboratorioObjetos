float x;
 float y;
 
 
 
 void setup() {
 size(800, 600);
 background(0);
 }
 
 void draw() {
 circle(x, y, x);
 
 x = width/2;
 y = height/2;
 
 
 if (TocaC(mouseX,mouseY, width/3, height/3)) {
 fill(#A70E13);
 } else {
 fill(#07038E);
 }
 }
 
 
 
 boolean TocaC(float Xmouse, float Ymouse, float x1, float y1) {
 float r= x/2;
 
 Xmouse = mouseX;
 Ymouse = mouseY;
 
 float d = dist(Xmouse, Ymouse, x1, y1);
 
 if (d > r) {
 return false;
 } else {
 return true;
 }
 }
