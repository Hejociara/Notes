void setup() {
size(640,360);
background(0);
}

void draw() {
background(0);
//Esconde a imagem do cursor
noCursor();
//A elipse tem sua posição constantemente atualizada pela posição do mouse
ellipse(mouseX, mouseY, 20,20);
}
