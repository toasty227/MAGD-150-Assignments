class Hotdog{  //class to create hotdogs
  int posX,posY;  //hotdogs position x and y variable
  
  Hotdog(){
    posX = (round(random(0,width-40)));  //randomize hotdog's position
    posY = (round(random(0,height-40)));
  }
  
  void display(){
    image(hotdog,posX,posY,35,35);  //display hotdog
  }
}

class Hamburger{  //class to create hamburgers
  int posX,posY;  //hamburgers positionx an y variable
  
  Hamburger(){
    posX = (round(random(0,width-40)));  //randomize hamburger's position
    posY = (round(random(0,height-40)));
  }
  
  void display(){
    image(hamburger,posX,posY,35,35);  //display hamburger
  }
}

Hotdog myHotdog;  //first hotdog
Hotdog mySecondHotdog;  //second hotdog
Hotdog myThirdHotdog;  //third hotdog
Hamburger myHamburger;  //first hamburger
Hamburger mySecondHamburger;  //second hamburger
Hamburger myThirdHamburger;  //third hamburger
PImage hamburger;  //hamburger image
PImage hotdog;  //hotdog image
PImage smile;  //face image
boolean ham = false;  //scene changer boolean
int faceX = width/2;  //face position x variable
int faceY = height/2;  //face position y variable

void setup(){
  background(20);
  size(800,600);  //sketch size
  hotdog = loadImage("hotdog.png");  //hotdog image
  hamburger = loadImage(https://cloud.githubusercontent.com/assets/16229377/11833949/807dbe08-a38d-11e5-9b1a-03afba40b9bc.png);  //hamburger image
  smile = loadImage("smile.png");  //face image
  myHotdog = new Hotdog();  //first hotdog
  mySecondHotdog = new Hotdog();  //second hotdog
  myThirdHotdog = new Hotdog();  //third hotdog
  myHamburger = new Hamburger();  //first hamburger
  mySecondHamburger = new Hamburger();  //second hamburger
  myThirdHamburger = new Hamburger();  //third hamburger
  textSize(32);  //size for text
}

void draw(){
  if (ham){  //if scene change is true
    background(20);  //background for hamburgers
    myHamburger.display();  //first hamburger displayed
    mySecondHamburger.display();  //second hamburger displayed
    myThirdHamburger.display();  //third hamburger displayed
    text("HAMBURGERS!!!", 100,50);  //text for hamburgers
  }  else{
    background(20);  //background for hotdogs
    myHotdog.display();  //first hotdog displayed
    mySecondHotdog.display();  //second hotdog displayed
    myThirdHotdog.display();  //third hotdog displayed
    text("HOTDOGS!!!!",100,50);  //text for hotdogs
  }
  image(smile,faceX,faceY,50,50);  //face created
  if(faceX == 0){  //start borders for face
    faceX = faceX + 10;
  }
  if(faceX + 50 == width){
    faceX = faceX - 10;
  }
  if(faceY == 0){
    faceY = faceY + 10;
  }
  if(faceY + 50 == height){
    faceY = faceY - 10;
  }  //end of face borders
}

void mousePressed(){
  ham = !ham;  //scene changer
}

void keyPressed(){
  if(keyCode == UP){  //move face up
    faceY = faceY - 1;
  }
  if (keyCode == DOWN){  //move face down
    faceY = faceY + 1;
  }
  if (keyCode == LEFT){  //move face left
    faceX = faceX - 1;
  }
  if (keyCode == RIGHT){  //move face right
    faceX = faceX + 1;
  }
}
