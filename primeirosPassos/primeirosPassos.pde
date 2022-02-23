float posX;
float velX;
void setup(){
  size(510, 510);
  background(#333333);
  noFill();
  stroke(#FFFFFF);
  posX= width/2;
}
void draw() {
  background(#333333);
  velX = mouseX/10;
  ellipse(posX, height/2, 30, 30);
  if (posX > width) {
    posX = 0;
  }
  else{
    posX = posX + velX;
  }
}
