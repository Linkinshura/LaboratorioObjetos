int RevX;
int RevY;
int i;
float h;

void setup() {
  size(800, 600);
}

void draw() {
  strokeWeight(/*randI(20)*/ VelMouse());
  line(mouseX, mouseY, RevX, RevY);
  RevX = mouseX;
  RevY= mouseY;
}

int randI(float maximo) {

  i = round(random(maximo));

  if (mousePressed) {
    stroke(255, 255, 255);
  } else {
    stroke(0, 0, 0);
  }


  return i;
}



/*
if (mousePressed && mouseButton == LEFT){
 stroke(#FF0318);
 };
 
 if (mousePressed && mouseButton == RIGHT){
 stroke(#000EFF);
 };
 
 if (mousePressed && mouseButton == CENTER){
 stroke(#000000);
 }; 
 */
float VelMouse() {
float ca = RevX - mouseX;
float co = RevY - mouseY;

h = sqrt(pow(ca, 2) - pow(co, 2));

  return h;
}
