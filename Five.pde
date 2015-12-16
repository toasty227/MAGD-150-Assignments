int puckX = 300;  //vairiable for puck x postion
int puckY = 320;  //variable for puck y position
boolean puckMove = false;  //variable to control if rink shows or not
int moveSpeedX = 3;  //variable for puck x axis movement
int puckDiam = 10;  //variable for puck diameter
int moveSpeedY = 1;  //variable for puck y axis movement
int box;

void setup(){
  size(1280,700);  //window size
}

void draw(){
  background(0);  //original background
  for(box=1;box < 75;box++){  //for loop to create background squares start
    noFill();
    stroke(255);
    rectMode(CENTER);
    rect(width/2,height/2,box*20,box*20);
  }  //for loop to create background squares end
  textSize(32);  //size for text
  fill(100,150,250);  //text color
  text("Press mouse to begin",500,350);  //instructional text
  if (puckMove){  //if puckMove true execute this
      background(200);  //rink background
      rectMode(CORNER);  //reset rectMode to corner
      fill(255);  //fill for ice
    rect(280,150,720,400);  //ice main part
    stroke(175,0,0);  //stroke for red line
    fill(175,0,0);  //fill for red line
    rectMode(CENTER);  //rect mode for red and blue lines
    rect(width/2,350,10,400);  //red line
    fill(0,0,100);  //fill for center dot
    stroke(0,0,100);  //stroke for center dot
    ellipse(width/2,350,15,15);  //center dot
    stroke(0);  //stroke for ice ends
    fill(255);  //fill for ice
    arc(280,350,100,400,HALF_PI,PI+HALF_PI);  //left ice end
    arc(1000,350,100,400,PI+HALF_PI,TWO_PI+HALF_PI);  //right ice end
    stroke(200,0,0);  //stroke for faceoff circles and goal lines
    fill(200,0,0);  //fill for goal lines
    rect(280,350,5,400);  //left goal line
    rect(1000,350,5,400);  //right goal line
    noFill();  //fill of faceoff circles
    ellipse(400,250,100,100);  //top left faceoff circle
    ellipse(400,450,100,100);  //bottom left faceoff circle
    line(395,200,395,195);  //top left faceoff circle hash marks start
    line(405,200,405,195);
    line(405,300,405,305);
    line(395,300,395,305);  //top left faceoff circle hash marks end
    line(395,400,395,395);  //bottom left faceoff circle hash marks start
    line(405,400,405,395);
    line(395,500,395,505);
    line(405,500,405,505);  //bottom left faceoff circle hash marks end
    ellipse(width-400,250,100,100);  //top right faceoff circle
    ellipse(width-400,450,100,100);  //bottom right faceoff circle
    line(width-405,300,width-405,305);  //top right faceoff circle hash marks start
    line(width-395,300,width-395,305);
    line(width-405,200,width-405,195);
    line(width-395,200,width-395,195);  //top right faceoff circle hash marks end
    line(width-405,400,width-405,395);  //bottom right faceoff circle hash marks start
    line(width-395,400,width-395,395);
    line(width-405,500,width-405,505);
    line(width-395,500,width-395,505);  //bottom right faceoff circle hash marks end
    fill(200,0,0);  //fill for faceoff dots
    ellipse(400,250,15,15);  //top left faceoff dot
    ellipse(400,450,15,15);  //bottom left faceoff dot
    ellipse(width-400,250,15,15);  //top right faceoff dot
    ellipse(width-400,450,15,15);  //bottom right faceoff dot
    fill(0,0,100);  //fill for blue lines
    stroke(0,0,100);  //stroke for blue lines
    rect((width/2)-100,350,10,400);  //left blue line
    rect((width/2)+100,350,10,400);  //right blue line
    stroke(0);  //stroke for puck
    fill(0);  //fill for puck
    ellipse(puckX,puckY,puckDiam,puckDiam);  //puck
    puckX = puckX + moveSpeedX;  //puck x axis movement
    puckY = puckY + moveSpeedY;  //puck y axis movement
  }
  if (puckX+(puckDiam/2) >= 1050){  //puck boundries start
    moveSpeedX = -3;
  }
  if (puckX+(puckDiam/2) <= 240){
    moveSpeedX = 3;
  }
  if (puckY+((puckDiam/2)-15) <= 150){
    moveSpeedY = 1;
  }
  if (puckY+(puckDiam/2) >= 550){
    moveSpeedY = -1;
  }  //puck boundries end
}

void mousePressed(){
  puckMove = !puckMove;  //change puckMove to opposite of current state
}
