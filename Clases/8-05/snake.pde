int cantFilas = 20;
int cantCol=20
int tamCol;
int tamFil;


// VariablesMovSnake
int dx=1, dy=0; // Snake

// VariablesMovManzana
int mx = round(random(cantCol-1)), my = round(random(cantFil-1));


//BodieSolid
int contBodieSolid = 1; // Tamaño Solid

int[] SolidX = new int[cantFil*cantCol];
int[] SolidY = new int[cantFil*cantCol];





void setup(){
size(800,800);
tamCol=with/cantCol;
tamFil=he8ght/cantFila);

// Link Start Solid Snake
SolidX[0]= cantCol/2;
SolidY[0]= cantFil/2;

}

void draw(){

MoverSolid();
CheckPineapple();
Grulla();
Pineapple();
SolidSnake();
CheckPum();

frameRate(5);

}


void Grulla(){

for(int j=0; j<cantFil;j++){
float y=j*tamFil;

for(int i=0; i<cantCol;i++){
float x= i*tamCol;

rect(x,y,tamCol,tamFil);

}

}

}

void Pineapple(){

float x = mx*tamCol;
float y = my*tamFil;

fill(255,0,0);
rect(x,y, tamCol, tamFil);




}



void KeyPressed(){

if(key=='d' || key=='D'){
dx=dx +1;
dy=0;


}

if(key=='a' || key=='A'){
dx =dx -1;
dy=0;

}

if(key =='w' || key=='W'){
dy=dy-1;
dx=0;
}

if(key=='s' || key=='S'){
dy=dy+1;
dx=0;


}

}


void SolidSnake(){
fill(222,99,22);

for(int i=0; i<contBodieSnake; i++){
float x=SolidX[i]*tamCol;
float y=SolidY[i]*tamFil;



rect(x,y,tamCol, tamFil);


}

}

void MoverSolid(){

/*
// VariablesMovSnake
int dx=1, dy=0; // Snake



//BodieSolid
int contBodieSolid = 1; // Tamaño Solid

int[] SolidX = new int[cantFil*cantCol];
int[] SolidY = new int[cantFil*cantCol];



*/

SolidX[0] = SolidX[0] + dy;
SolidY[0] = SolidY[0] + dx;




}


void CheckPineapple(){

if(SolidX[0] == mx && SolidY[0] == my){
contBodieSolid= contBodieSolid+1;

mx = round(random(cantCol-1))
my = round(random(cantFil-1));




