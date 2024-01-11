import codeanticode.syphon.*;
SyphonServer ProcessingtoResolume;

int filaX = 6;
int filaY = 6;

float posX;
float posY;

float cuadroX;
float cuadroY;

String[][] Finestra;

void setup() {
  size(700, 700, P2D);
  ProcessingtoResolume = new SyphonServer(this, "Processing Syphon");
  posX = width / filaX;
  posY = height / filaY;

  // Inicializar la matriz de información de celdas
  Finestra = new String[filaX][filaY];
}

void draw() {
  background(0);
  fill(#f1f1f1);
  stroke(0);
  Vecindario();

  for (int x = 0; x < filaX; x++) {
    for (int y = 0; y < filaY; y++) {
      // Calcula la posición del cuadrado
      cuadroX = x * posX;
      cuadroY = y * posY;

      // Dibuja el cuadrado según el estado de la celda en Finestra
      if (Finestra[x][y] != null && Finestra[x][y].equals("Encendida")) {
        fill(#FF8C0A);  // Color rojo para la celda encendida
      } else {
        fill(#f1f1f1);
      }

      rect(cuadroX, cuadroY, posX, posY);
    }
  }
  ProcessingtoResolume.sendScreen();
}

void Vecindario() {

  if (random(1) < 0.05) {  // Ajusta el valor para cambiar la frecuencia de encendido/apagado
    int xAleatorio = int(random(filaX));
    int yAleatorio = int(random(filaY));

    if (Finestra[xAleatorio][yAleatorio] == null || Finestra[xAleatorio][yAleatorio].equals("Apagada")) {
      Finestra[xAleatorio][yAleatorio] = "Encendida";
    } else {
      Finestra[xAleatorio][yAleatorio] = "Apagada";
    }
  }
}
