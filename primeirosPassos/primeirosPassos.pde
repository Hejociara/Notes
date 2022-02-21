float posX;
void setup() {
  size(510, 510);
  background(#333333);
  noFill();
  stroke(#FFFFFF);
  posX= width/2;
}
void draw() {
  background(#333333);
  ellipse(posX, height/2, 30, 30);
  posX = posX +1;
}
