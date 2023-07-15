int [] pantallas = new int [12]; 
int numero0, numero1, numero2, numero3, numero4, numero5, numero6, numero7, numero8, numero9, numero10, numero11;
PImage foto1, foto2, foto3, foto4, foto5, foto6, foto7, foto8, foto9, foto10, foto11, foto12;
int minumero;
int numeroactual;
void setup() {

  numero0=0;
  numero1=1;
  numero2=2;
  numero3=3;
  numero4=4;
  numero5=5;
  numero6=6;
  numero7=7;
  numero8=8;
  numero9=9;
  numero10=10;
  numero11=11;
  size(600, 600);

  foto1=loadImage("imagen1.jpeg");
  foto2=loadImage("imagen2.jpeg");
  foto3=loadImage("imagen3.png");
  foto4=loadImage("imagen4.jpeg");
  foto5=loadImage("imagen5.jpeg");
  foto6=loadImage("imagen6.jpeg");
  foto7=loadImage("imagen7.jpeg");
  foto8=loadImage("imagen8.jpeg");
  foto9=loadImage("imagen9.jpeg");
  foto10=loadImage("imagen10.jpeg");
  foto11=loadImage("imagen11.jpeg");
  foto12=loadImage("imagen12.jpeg");
  for (int i=0; i<12; i++) {
    pantallas[i] =0;
  }
}


void draw() {
  println(pantallas);
  numeroactual=minumero;
  println(numeroactual);

  if (pantallas[0]==0) {
   
    planillabase("pantalla1", foto1);
  } else if (pantallas[1]==0) {
    planillabase("pantalla2", foto2);
  } else if (pantallas[2]==0) {
    planillabase("pantalla3", foto3);
  } else if (pantallas[3]==0) {
    planillabase("pantalla4", foto4);
  } else if (pantallas[4]==0) {
    planillabase("pantalla5", foto5);
  } else if (pantallas[5]==0) {
    planillabase("pantalla6", foto6);
  } else if (pantallas[6]==0) {
    planillabase("pantalla7", foto7);
  } else if (pantallas[7]==0) {
    planillabase("pantalla8", foto8);
  } else if (pantallas[8]==0) {
    planillabase("pantalla9", foto9);
  } else if (pantallas[9]==0) {
    planillabase("pantalla10", foto10);
  } else if (pantallas[10]==0) {
    planillabase("pantalla11", foto11);
  } else if (pantallas[11]==0) {
    planillabase("pantalla12", foto12);
  } else if (pantallas[12]==0) {
    planillabase("pantalla1", foto1);
  }
}


void mousePressed() {
  if (pantallas[0]==0&& chequebotoncuadrado(250, 300, 250, 300, numero1)) {
  }else if (pantallas[1]==0 && chequebotoncuadrado(250, 300, 250, 300, numero2)) {
  }else if (pantallas[2]==0 && chequebotoncuadrado(250, 300, 250, 300, numero3)) {
  } else if (pantallas[3]==0 && chequebotoncuadrado(250, 300, 250, 300, numero4)) {
  } else if (pantallas[4]==0 && chequebotoncuadrado(250, 300, 250, 300, numero5)) {
  } else if (pantallas[5]==0 && chequebotoncuadrado(250, 300, 250, 300, numero6)) {
  } else if (pantallas[6]==0 && chequebotoncuadrado(250, 300, 250, 300, numero7)) {
  } else if (pantallas[7]==0 && chequebotoncuadrado(250, 300, 250, 300, numero8)) {
  } else if (pantallas[8]==0 && chequebotoncuadrado(250, 300, 250, 300, numero9)) {
  } else if (pantallas[9]==0 && chequebotoncuadrado(250, 300, 250, 300, numero10)) {
  } else if (pantallas[10]==0 && chequebotoncuadrado(250, 300, 250, 300, numero11)) {
  }  else if (pantallas[11]==0 && chequebotoncuadrado(250, 300, 250, 300, numeroactual)) {
  }
}


void planillabase(String mitexto, PImage lafoto) {
  String eltexto=mitexto;
  PImage mifoto= lafoto;
  image(mifoto, 0, 0);
  textSize(30);
  text(eltexto, 220, 350);
  fill(255);

  rect(250, 250, 50, 50);
 
}


boolean chequebotoncuadrado(int posicionx1, int posicionx2, int posiciony1, int posiciony2, int elnumero) {
  int miposicionx1= posicionx1;
  int miposicionx2= posicionx2;

  int  miposiciony1= posiciony1;
  int miposiciony2= posiciony2;

  minumero=elnumero;

  for (int i=0; i<12; i++) {
    pantallas[i]=1;
    pantallas[minumero]=0;
  }

  return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);
  
 
}
