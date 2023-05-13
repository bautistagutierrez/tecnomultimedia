int segundos; 
 float posX; 
 float posY; 
 int px, py, ancho, alto; 
 int px2, py2, ancho2, alto2; 
 boolean inicio; 
String estado;
int c; 
PImage quokka;
PImage quoakkaa;
PImage quoakkka;
PFont lafuente;
void setup() {
  size( 640, 480 ); 
  textAlign( CENTER, CENTER );
  textSize( 30 );
   posX = 700; 
  posY = 400; 
  
  fill(200);
lafuente=loadFont("MyriadPro-Semibold-30.vlw");
quokka=loadImage("tecno1.jpg"); 
quoakkaa=loadImage("tecno2.jpg");
quoakkka=loadImage("tecno3.jpeg");
  estado = "menu";
  
  frameRate( 60 );
}

void draw() {
  if ( estado.equals("menu") ) {
    background(0);
    textFont(lafuente);
    text( "Quokka \n el animal más feliz del mundo.", width/2, height/2 );
    circle( width/2, height/4*3, 50 );
    
  } else if (estado.equals("p1") ) {
    image(quokka,0,0);
    fill(#77DE93);

    text( "Es un pequeño canguro del \n tamaño de un gato doméstico \n es herbívoro y principalmente nocturno",  width/2, posY );
 
    c++;  
    if( c >= 100 ){  
      estado = "p2";
      c = 0; 
    }
    //
  } else if (estado.equals("p2") ) {
    image(quoakkaa,0,0);
    text("Se puede encontrar en algunas \n pequeñas islas de la costa \n de Australia Occidental; en particular, \n en la isla de Rottnest",posX, height/2);
    //
    c++;  
    if( c >= 150 ){  
      estado = "p3";
      c = 0;  
    }
    //
  } else if (estado.equals("p3") ) {
  image(quoakkka,0,0);
    text( "Como la mayoría de los macrópodos,\n los quokkas se alimentan de muchos tipos de \n vegetación, como hierbas, juncos y hojas ", width/2, posX );
     circle( width/2, height/4*4, 50 );
  }

  else {
    text( "no es ningun \n estado preseteado", width/2, height/2 );
    
  }
   if (posX>(width/2)) { 
     posX --; 
   } 
   if (segundos ==5){ 
     posY = 500; 
   } 
   if (posY>(height/2)){ 
     posY --; 
   } 
   if (segundos ==6){ 
     posY = 500; 
     posX = 200; 
   } 
    if (segundos ==11){ 
     posX = -20; 
   } 
   if (posX<(width/2)) { 
     posX ++; 
   }
   
  println( estado );
 
}

void mousePressed() {
  if( estado.equals("menu") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "p1";}
  }
  
 if( estado.equals("p3") ){
    if( dist(width/2, height/4*4, mouseX, mouseY) < 50/2 ){
      estado = "menu";}
}
}
