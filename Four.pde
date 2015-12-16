int pressed = 0;
int pressedState = 0;
void setup(){
  size(1280,800);
}

void draw(){
  background(0);
  fill(139,69,19);
  rect(625,400,30,150);  //table stand
  ellipseMode(CENTER);
  ellipse(640,400,200,50);  //table top
  beginShape();  //left table leg
  vertex(626,525);
  vertex(610,537);
  vertex(565,537);
  vertex(565,550);
  vertex(626,550);
  endShape(CLOSE);
  beginShape();  //right table leg
  vertex(654,525);
  vertex(670,537);
  vertex(715,537);
  vertex(715,550);
  vertex(654,550);
  endShape(CLOSE);
  noStroke();
  fill(255);
  arc(640,400,25,15,0,PI);  //cup bottom
  rect(627.5,375,25,25);  //cup top
  stroke(0);
  if(pressedState == 1){
    textSize(32);
    text("But that's none of my business",mouseX,mouseY);
  }
  textSize(32);
  text("When you like a team the year after they win a championship...",50,50);
}

void mousePressed(){
  pressed = pressed +1;
  pressedState = (pressed % 2);
}
