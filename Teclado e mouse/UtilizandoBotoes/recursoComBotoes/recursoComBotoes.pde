int bgColor = 0;

void setup(){
size(640,360);
background(0);
}

void draw(){
background(bgColor);
noCursor();
ellipse(mouseX, mouseY, 10,10);
}

void mousePressed() {
if (mouseButton == LEFT) {
bgColor = 255;
}
else if (mouseButton == RIGHT) {
bgColor = 0;
}
else {
bgColor = 126;
}
}
