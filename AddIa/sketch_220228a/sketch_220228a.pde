//Variáveis do posicionamento e velocidade do retângulo
float speedY, speedX, posX, posY;
//Variáveis do posicionamento e velocidade do círculo
float enemyX, enemyY, enemySpeedX, enemySpeedY;

void setup(){
    size(640,360);
    background(255);
    enemyX = width / 2;
    enemyY = height / 2;
}

 void draw(){
    background(255);
    //Chamada de funções
    enemy();
    player();
}

//Funções do jogador
void player() {
    posX = posX + speedX;
    posY = posY + speedY;
    //Cria um retângulo de pode ser controlado pelo teclado
     fill(255,0,0);
    rect(posX, posY, 10, 10);
}

//Programação do inimigo
void enemy() {
    //Máquina de estados do inimigo
    if (dist(enemyX, enemyY, posX, posY) < 100) {
      enemyPursue();
    }
    else {
       enemyRest();
    }

    //Atualiza a posição de acordo com o posicionamento em relação ao mouse
    enemyX = enemyX + enemySpeedX;
    enemyY = enemyY + enemySpeedY;  
    fill(0,255,0);
     ellipse(enemyX, enemyY, 10,10);
}

//Comportamento de descanso do inimigo
void enemyRest() {
     enemySpeedY = 0;
     enemySpeedX = 0;
}

//Estado do inimigo de perseguição
void enemyPursue() {
  if (enemyX < posX - 3) {
      enemySpeedX = 2;
  }
  else if (enemyX > posX + 3) {
      enemySpeedX = -2;
  }
  else {
       enemySpeedX = 0;
  }

//Verifica a posição em vertical do mouse para persegui-lo
  if (enemyY < posY - 3) {
      enemySpeedY = 2;
  }
  else if (enemyY > posY + 3) {
      enemySpeedY = -2;
  }
  else {
      enemySpeedY = 0;
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
      speedX = -3;
}
  if (key == 's' || key == 'S') {
      speedY = 3;
  }
    if (key == 'd' || key == 'D') {
      speedX = 3;
    }
    if (key == 'w' || key == 'W') {
      speedY = -3;
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
