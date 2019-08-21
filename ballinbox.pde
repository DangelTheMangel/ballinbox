// dette er variablerne til cordinaterne hos bolden
float ballX = 0, ballY = 0;

// dette er boxen cordinater
float boxX = 0, boxY = 0;

// dette er radiusen på bolden
float rad= 24;

// dette er boxen størrelse
float boxSize = 500;

// dette er farten på bolden
float xSpeed = 6, ySpeed = 5;

// dette er det der boxen holder sig i midten
float a = 0.5;

//dette gøre boxen mindre/ større
float b = 1;
void setup () {
  // her sætter jeg størrelsen af vinduet
  size(500, 500);
}

void draw () {
  // her sætter jeg farven på bagrunden og laver den være gang jeg tenger skærmen
  background(0);

  // dette rykker bolden
  ballX += xSpeed;

  // dette for boxen til at blive mindre
  boxX += a;
  boxY += a;
  boxSize -= b;

  // dette holder bolden inden for boxen
  if (ballX> boxSize + boxX || ballX< boxX) {
    xSpeed *= -1;
  }

  if (ballX< boxX) {
    ballX=boxX+10;
  } 

  ballY += ySpeed;
  if (ballY> boxSize + boxY ||ballY< boxY) {
    ySpeed *= -1;
  } 

  if (ballY< boxY){
    ballY=boxY+10;
  }


  // dette er farven og hvor boxen bliver tegnet være gang den tegner skærmen
  fill(240, 0, 0);
  rect(boxX, boxY, boxSize, boxSize);
  // detter er farven og hvor bloden bliver tegnet været skærm
  fill(250);
  ellipse(ballX, ballY, rad, rad);
  
if (boxSize < 40 || boxSize > 550 ){
   a *= -1;
   b *= -1;
}

println(boxSize);
}
