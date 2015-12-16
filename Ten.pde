class Man{  //class for man
  int manX;  //variables for man and man movement
  float manY, gravity, velocityY, jumpSize;
  boolean onGround;
  
  Man(){  //constructor for man
    manX = 100;
    manY = height-100;
    gravity = 1.5;
    velocityY = 0;
    jumpSize = -60;
    onGround = false;
  }
  
  void display(){  //display man
    image(dude,manX,manY,50,100);
  }
  
  void move() {  //control man's position
    if(keyPressed){ 
      if(key == 'a'){
        manX = manX - 5;
      }
      if(key == 'd'){
        manX = manX + 5;
      }
    }
    if(manX == 0){  //start boundry for man
      manX = manX + 10;
    }
    if(manX + 50 == width){
      manX = manX - 10;
    }
    if(manY == 0){
      manY = manY + 10;
    }  //end boundry for man
  }
  
  void jump(){
    velocityY = gravity + velocityY;  //tie velocityY to gravity
    manY = velocityY + manY;  //tie manY to velocityY
    if(manY + 100 >= height){  //set floor for man
      manY = height - 100;
      onGround = true;
    } else{
      onGround = false;
    }
    if(keyPressed){
      if(key == 'w'){  //if w is pressed man jumps
        if(onGround){
          velocityY = jumpSize;
        }
      }
    }
  }
  
  void win(){
    if(manX > 40 && manX < 130 && manY < 140){  //set collision detection for man on girl
      gravity = 0;  //change gravity so man won't fall anymore
      background(0);  //background for victory screen
      text("YOU WIN!!!!",550,350);  //text saying you win
    }
  }
}

class Rock{  //class for rocks
  int rockX,rock1Y,rock2Y,rock3Y;  //variables for rocks
  
  Rock(){  //rock constructor
    rockX = width-100;
    rock1Y = 575;
    rock2Y = 375;
    rock3Y = 175;
  }
  
  void display(){  //display rock in three different locations
    image(boulder,rockX,rock1Y,100,100);
    image(boulder,rockX,rock2Y,100,100);
    image(boulder,rockX,rock3Y,100,100);
  }
  
  void update(){  //move rocks to the left
    rockX = rockX -3;
  }
}

class Timer{  //class for timer
  float startTime, stopTime;  //floats for timer 
   boolean started = false;  //boolean to start/stop timer

  Timer(float _stopTime){  //constructor for timer
    stopTime = _stopTime;
  }
  
  void timerStart(){  //starts timer
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){  //stops timer
    started = false;
    println("time stopped");
  }

  boolean isFinished(){  //checks if timer is over
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}

PImage dude;  //man picture name
PImage lady;  //woman picture name
PImage boulder;  //rock picture name
boolean play = false;  //boolean for starting game or not
int numberRocks;  //variable to track rocks
Man myMan;  //man class called myMan
Rock[] myRock;  //set rock class to an array called myRock
Timer rockTimer;  //timer class to spawn rocks

void setup(){
  size(1280,700);  //size for sketch
  dude = loadImage("man.png");  //load man image
  lady = loadImage("woman.png");  //load woman image
  boulder = loadImage("rock.png");  //load rock image
  myMan = new Man();  //create man from class
  myRock = new Rock[1000];  //create array with 1000 slots
  for(int x = 0; x < myRock.length - 1; x++){  //create 1000 instances of rocks
    myRock[x] = new Rock();
  }
  rockTimer = new Timer(5000);  //create 5 second timer for rocks
  rockTimer.timerStart();  //start timer for rocks
}

void draw(){
  menu();  //run menu function
}

void menu(){  //function for menu screen
  background(0);  //background for menu screen
  textSize(32);  //increase text size
  text("Save the Girl",500,100);  //display the name of the game
  noFill();  //set no fill
  stroke(255);  //set stroke to white
  rect(545,500,115,50);  //create box for start button
  text("START",550,540);  //lable start button
  if(mouseX > 545 && mouseX < 660 && mouseY > 500 && mouseY < 550){  //setup collision for start button
    fill(255,50);  //change fill and transparancy to indicate collision
    if(mousePressed){
      play = true;  //if mouse is pressed over button change play to true
    }
  } else{
    fill(255);  //change fill to indicate no collision
  }
  if(play){
    game();  //if play is true run game function
  }
}

void game(){  //function for game
  background(255);  //background for game
  stroke(0);  //stroke black for platforms
  fill(255,0,0);  //fill red for platforms
  rect(0,540,1100,25);  //bottom platform
  rect(180,330,1100,25);  //middle platform
  rect(0,140,1100,25);  //top platform
  image(lady,50,40,75,100);  //show woman picture
  myMan.display();  //display man
  myMan.move();  //allow man to move
  myMan.jump();  //allow man to jump
  if(rockTimer.isFinished()){  //reset rock spawn timer
    numberRocks++;
    rockTimer.timerStart();
  }
  if(numberRocks == myRock.length - 1){  //restart count for rocks if they run out
    numberRocks = 0;
  }
  for(int newRocks = numberRocks; newRocks > 0; newRocks--){  //keep track of spawned rocks
    myRock[newRocks].display();
    myRock[newRocks].update();
  }
  myMan.win();  //display victory screen
}
