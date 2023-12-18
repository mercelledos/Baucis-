void setup(){
  size(450,700);



}

void draw(){
background(0);
fill(#f1f1f1);
stroke(0);

float filaX = 6;
float filaY = 10;

float posX = width/filaX;
float posY = height/filaY;

for (int x = 0; x < filaX; x++){
  for (int y = 0; y < filaY; y++){
    
    rect(x * posX, y * posY, posX, posY);

    }
  }
}
