void setup(){
  size(600, 800);

}

void draw(){
  if(mousePressed)  estampa(mouseX, mouseY, 300, 300);
    
  }
  
void estampa(float x, float y, float w, float h){
  fill(#C10000);
  rect(x,y,w,h);
  
  fill(#9F86E5);
  ellipse(x+w/2,y+h/2, w, h);
  
   fill(#D39A26);
  rect(x+w/4, y+h/4, w/2, h/2);
   
  }
