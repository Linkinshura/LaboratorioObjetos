//PImage img;

//void setup(){
// size(600,800);
//  img = loadImage("a.png");

//}

//void draw(){

//    background(img);

//    image(img,mouseX,mouseY);


//}


PImage img;
color c;

void setup() {
  size(600, 600);
  img = loadImage("AA.jpg");
}

void draw() {
  //  image(img,0,0);


  //rect(mouseX,mouseY,30,30);
  for (int i=0; i<100; i++) {
    int x=int(random(width));
    int y=int(random(height));
    float t= map(mouseX, 0, height, 0, 255);
    float d= map(mouseX, 0, width, 0, 30);

    
    noStroke();
    c = img.get(x, y);
    fill(c, t);
    ellipse(x, y, d, d);
  }
}


/*
class Pelota{
 PImage img;
 
 Pelota(float tipo){
 if(tipo == 1) img = loadImage("1.png");
 
 }
 
 void mostrar(){
 Image(img,pos.X,pos.Y);
 }
 
 }
 */
