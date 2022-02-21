//Declaração do objeto com o tipo seguido pelo nome do objeto
PImage img;
void setup() {size(640,360);
//Atribuição da imagem ao objeto
img = loadImage("BG.png");}
void draw() {
//Exibição do objeto na tela com os parâmetros de posicionamento e tamanho
image(img, 0, 0, width, height);}
