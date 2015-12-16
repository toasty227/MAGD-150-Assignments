float posX = 100;
float posY = 100;
int moveX = 3;
int moveY = 2;
int ballDiam = 25;
boolean shoot = false;
color b = color(0,0,255);
color r = color(255,0,0);
float colorize;

void setup(){
  size(1250,700);
  //frameRate(10);
}

void draw(){
  if(shoot){
    blastShot();
  }  else{
    abduct();
  }
  fill(255);
  text("Click mouse to switch", 1100,650);  //instructions for switching scenes
}

void blastShot(){
  background(0);
  stroke(0);
  fill(200);  //ground fill
  rect(0,500,width,400);  //ground
  fill(50);  //road fill
  beginShape();  //road start
  vertex(620,500);
  vertex(630,500);
  vertex(1050,height);
  vertex(200,height);
  endShape(CLOSE);  //road end
  fill(150);  //building front fill
  rect(0,0,100,height);  //left building front
  rect(1150,0,100,height);  //right building front
  fill(100);  //building side fill
  rect(75,0,25,height);  //left building side
  rect(1150,0,25,height);  //right building side
  noStroke();  //stroke for lasers
  colorize();  //function for laser color
  ellipse(posX,posY,20,20);  //laser left side
  rect(posX,posY-10,50,20);  //laser middle
  ellipse(posX+50,posY,20,20);  //laser right side
  posX = random(100,1100);  //randomize laser x
  posY = random(100,600);  //randomize laser y
}

void mousePressed(){
  shoot = !shoot;  //switch to opposite of shoot
}

void colorize(){
  colorize = round(random(0,1));  //switch from red to blue
  if(colorize == 1){
    fill(b);
  } else if (colorize ==0){
    fill(r);
  }
}

void abduct(){
  background(0);  //background for ufos
  fill(255);
  ellipse(posX,posY,ballDiam,ballDiam);  //moving ball
  noFill();  //fill for rings
  stroke(255);  //stroke for rings
  for(int ring = 10; ring <= 75; ring++){  //tractor beam rings start
    ellipse(width/2 ,height/3 + ring,200 + (ring*4),50);
  }  //tractor beam rings end
  fill(255);  //fill for ufo
  stroke(0);  //stroke for ufo
  ellipse(width/2,height/4,100,100);  //ufo top
  ellipse(width/2,height/4+25,200,50);  //ufo bottom
  if (posX+(ballDiam/2) >= 1250){  //ball boundries start
    moveX = -3;
  }
  if (posX <= 0){
    moveX = 3;
  }
  if (posY <= 0){
    moveY = 1;
  }
  if (posY+(ballDiam/2) >= 700){
    moveY = -1;
  }  //ball boundries end
  posX = posX + moveX;  //ball moveX
  posY = posY + moveY;  //ball moveY
  if (posX+(ballDiam/2) >= 625 && posY >= 225){  //ball abduction start
    moveY = -1;
    moveX = 0;
  }
  if (posY <= height/4 +15 && posX + (ballDiam) >= 625){
    moveY = 0;
  }  //ball abduction end
}
