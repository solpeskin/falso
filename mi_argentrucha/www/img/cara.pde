void setup (){
  size(600,600);
}

void draw (){
 // line (x, y, x2, y2);
 // rect(x, y, ancho, alto);
 // ellipse (x, y, ancho, alto);
 // variable += 1;
 
 background(121, 199, 194);
 cara();
}

// funcion en processing
void cara (){
  fill(255, 255, 38);
  ellipse (300, 300, mouseX, mouseX);
  
  //ojos
  ojos(300, mouseX);
  boca(300);
  //nariz(300);
}

void ojos (int xOjos, int tamano) {
  int separacion = 5;
  fill(240);
  noStroke();
  ellipse (xOjos - tamano / separacion, 290, tamano / 4, tamano / 5);
  ellipse (xOjos + tamano / separacion, 290, tamano / 4, tamano / 5);
  
  //pupilas
  fill(50);
  ellipse (xOjos - tamano / separacion, 290, tamano / 10, tamano /10);
  ellipse (xOjos + tamano / separacion, 290, tamano / 10, tamano /10);
}

void boca (int xBoca) {
  fill(235, 85, 21);
  ellipse (xBoca, 300 + mouseX * 0.2,  mouseX / 4, mouseX / 4);
  
  //lengua
  fill(255, 153, 110);
  ellipse (xBoca, 302 + mouseX * 0.27, mouseX / 6 , mouseX / 10);
  
}

void nariz (int xNariz){
  fill(0);
  ellipse(xNariz, 300 + mouseX * 0.04, mouseX / 8, mouseX / 8);
  
}
