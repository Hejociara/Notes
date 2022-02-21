void setup(){
size(600,600);
background(100,100,35); 
noFill();
stroke(#FFFFFF);
quad(20,50,50,50,70,80,10,80);
fill(150,501,20); //
triangle(120,150,105,100,200,200);
stroke(60,150,60);//cor do contorno
rect(200,100,90,90);
text("I do love you",200,100,10);
} //<>//
void draw(){
  if(mousePressed){
    stroke(mouseX/2);
  ellipse(mouseX, mouseY, random(20,100), random(20,100));
}
}
