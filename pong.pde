float ballX, ballY;
float ballSize;
float centerX, centerY;
float paddleW, paddleH;
float rightPaddleX, rightPaddleY;
float leftPaddleX, leftPaddleY;
float speedX, speedY;

boolean isPlaying = false;

// score
final int TOTAL_LIFE = 3;
int score;
int life;
  
void setup(){
  size(640,400);
  background(255);
  
  centerX = width/2;
  centerY = height/2;
  ballSize = 30;
  ballX = centerX;
  ballY = centerY;
  speedX = random(-100,100);
  speedY = random(-100,100);
  paddleW = 20;
  paddleH = 100;
  rightPaddleX = width-paddleW*2-20;
  rightPaddleY = centerY-paddleH/2;
  leftPaddleX = paddleW+20;
  leftPaddleY = centerY-paddleH/2;
  score = 0;
  life = TOTAL_LIFE;
  
  // middle line
  stroke(128);
  line(centerX, 0, centerX, height);
  
  // ball
  noStroke();
  fill(255,0,0);
  ellipse(centerX,centerY,ballSize,ballSize);
  
  // paddles
  fill(0,0,255);
  rect(rightPaddleX, rightPaddleY, paddleW, paddleH);
  rect(leftPaddleX, leftPaddleY, paddleW, paddleH);
}

void draw(){
  if (isPlaying){
    background(255);
  
    // middle line
    stroke(128);
    line(centerX, 0, centerX, height);
    
    // -------- ball
    // move
    ballX += speedX;
    ballY += speedY;
    // boundary detection
    if (ballX < leftPaddleX+paddleW){
      speedX *= -1;
    }
    if (ballY < 0 || ballY > height){
      speedY *= -1;
    }
    // hit detection
    if (ballX >= rightPaddleX){
      if (ballY >= rightPaddleY && ballY <= rightPaddleY+paddleH){
        speedX *= -1;
        score += 10;
        println("score: "+ score);
      }else {
        isPlaying = false;
        life--;
        if (life <=0 ){
          println("game over");
        }else{
          println("life: " +life);
        }
      }
    }
    // draw
    noStroke();
    fill(255,0,0);
    ellipse(ballX,ballY,ballSize,ballSize);
    // -------- ball
    
    // paddles
    fill(0,0,255);
    // right
    rightPaddleY = mouseY - paddleH/2;
    rect(rightPaddleX, rightPaddleY, paddleW, paddleH);
    // left
    leftPaddleY = ballY - paddleH/2;
    rect(leftPaddleX, leftPaddleY, paddleW, paddleH);
  }
}

void mousePressed(){
  isPlaying = true;
  
  // restart
  ballX = centerX;
  ballY = centerY;
  speedX = random(-10,10);
  speedY = random(-10,10);
}
