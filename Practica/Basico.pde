int y;
int x;
void setup(){
size(800,800);
background(200, 150, 100);
}
// Variables Globales
// mouseX
// mouseY

void draw(){
line(x, y, y,x);
x = x+1;
y = x+y;
// point(200, 200);
//  print(0, 100);
// rect(50, 0, width, height);
// circle(100, 0, 100);

}
