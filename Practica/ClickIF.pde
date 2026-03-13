/*int x;
int y;
*/

// boolean IsClick;
int Xprev;
int Yprev;


void setup(){
  size(500,500);
}

void draw(){
/*
x = width / 2;
y = height / 2;

line(0,0,x,y);
*/

if (mousePressed){
  line(mouseX,mouseY, Xprev, Yprev);
 
  Xprev=mouseX;
  Yprev=mouseY;
  }
else {
  background(126);
  Xprev = mouseX;
  Yprev = mouseY;

  }

}



/*
AND = &&
OR = ||
NOT = !


*/
