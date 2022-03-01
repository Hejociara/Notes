//Variáveis do posicionamento e velocidade do retângulo
float speedY, speedX, posX, posY;
void setup(){
size(640,360);
background(0);
}

void draw(){
    background(0);
posX = posX + speedX;
posY = posY + speedY;
rect(posX, posY, 20, 20);
}

void keyPressed() {
if (key == 'a' || key == 'A') {
speedX = -1;
}
if (key == 's' || key == 'S') {
speedY = 1;
}
if (key == 'd' || key == 'D') {
speedX = 1;
}
if (key == 'w' || key == 'W') {
speedY = -1;
}
}

void keyReleased() {
if (key == 'a' || key == 'A') {
      speedX = 0;
}
    if (key == 's' || key == 'S') {
speedY = 0;
}
if (key == 'd' || key == 'D') {
speedX = 0;
}
if (key == 'w' || key == 'W') {
speedY = 0;
}
}
