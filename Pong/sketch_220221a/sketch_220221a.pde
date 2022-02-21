//variáveis para o posicionamento da bola
int ballX, ballY, ballSize;
//variáveis para o posicionamento das palhetas
int leftPaddleX, leftPaddleY, rightPaddleX, rightPaddleY;

//função de inicialização
void setup()
{
//determinar o tamanho e a cor de fundo da tela
size(640,360);
background(0);
//atribuir valores iniciais das variáveis da bola
ballX = width/2 - 5;
ballY = height/2 - 5;
ballSize = 30;
//atribuir valores iniciais das variáveis da palheta esquerda
leftPaddleX = 10;
leftPaddleY = height/2 - 50;
//atribuir valores iniciais das variáveis da palheta esquerda
rightPaddleX = width - 20;
rightPaddleY = height/2 - 50;
//determinar o tamanho da fonte do texto
textSize(32);}

//função de repetição
void draw()
{
//atualizando a cor de fundo toda vez que a tela for desenhada
background(0);
//estabelecendo a posição inicial e o texto da pontuação
text("Player1", 160, 50);
text("player2", 480, 50);
//estabelecendo a posição e o tamanho inicial das palhetas
rect(leftPaddleX,leftPaddleY,10,100);
rect(rightPaddleX,rightPaddleY,10,100);
//estabelecendo a posição inicial
noStroke();
ellipse(ballX, ballY, ballSize, ballSize);}
