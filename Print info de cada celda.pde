int filaX = 6;
int filaY = 10;

float posX;
float posY;

String[][] Finestra;  // Una matriz para almacenar información específica para cada celda

void setup() {
  size(450, 700);
  posX = width / filaX;
  posY = height / filaY;

  // Inicializar la matriz de información de celdas
  Finestra = new String[filaX][filaY];
}

void draw() {
  background(0);
  fill(#f1f1f1);
  stroke(0);

  for (int x = 0; x < filaX; x++) {
    for (int y = 0; y < filaY; y++) {
      // Calcula la posición del cuadrado
      float cuadroX = x * posX;
      float cuadroY = y * posY;

      // Comprueba si el mouse está sobre el cuadrado
      if (mouseX > cuadroX && mouseX < cuadroX + posX && mouseY > cuadroY && mouseY < cuadroY + posY) {
        fill(#FFAD08);  // Color rojo para la celda actual
      } else {
        fill(#f1f1f1);
      }

      rect(cuadroX, cuadroY, posX, posY);
    }
  }
}

void mousePressed() {
  // Obtén las coordenadas de la celda en la que se hizo clic
  int x = int(mouseX / posX);
  int y = int(mouseY / posY);

  // Imprime información asociada a esa celda
  println("Celda [" + x + ", " + y + "]: " + Finestra[x][y]);

  // Puedes realizar acciones específicas para la celda seleccionada
  // Aquí puedes, por ejemplo, abrir una ventana emergente con más detalles.
}
