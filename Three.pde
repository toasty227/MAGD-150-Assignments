void setup(){
  size(1100,700); 
}

void draw(){
  background(15,0,40);
   stroke(255,255,0);  //Star Color
  point(100,50);  //Star Start
  point(125,100);
  point(1000,125);
  point(450,25);
  point(300,110);
  point(650,85);
  point(725,90);
  point(200,150);
  point(510,130);
  point(800,53);
  point(874,67);  //Star End
   fill(255);  //Moon Fill
  ellipse(50,50,75,75);  //Moon
  fill(255,255,255,200);  //Bat Signal Fill
  stroke(0);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,275,260);  //Bat Signal Circle
  fill(0,200);
  beginShape();  //Bat Signal Bat Start
  vertex(mouseX-25,mouseY-50);
  vertex(mouseX-20,mouseY-35);
  vertex(mouseX+20,mouseY-35);
  vertex(mouseX+25,mouseY-50);
  vertex(mouseX+30,mouseY);
  vertex(mouseX+60,mouseY-2);
  vertex(mouseX+65,mouseY-60);
  vertex(mouseX+125,mouseY-60);
  vertex(mouseX+90,mouseY+5);
  vertex(mouseX+95,mouseY+25);
  vertex(mouseX+30,mouseY+50);
  vertex(mouseX,mouseY+100);
  vertex(mouseX-30,mouseY+50);
  vertex(mouseX-95,mouseY+25);
  vertex(mouseX-90,mouseY+5);
  vertex(mouseX-125,mouseY-60);
  vertex(mouseX-65,mouseY-60);
  vertex(mouseX-60,mouseY-2);
  vertex(mouseX-30,mouseY);
  endShape(CLOSE);  //Bat Signal Bat End
  fill(0);
  rect(0,400,160,300);  //Building 1
  fill(255);  //Building 1 Window Fill
  rect(10,425,15,15);  //Building 1 Windows Start
  rect(10,460,15,15);
  rect(35,425,15,15);
  rect(60,495,15,15);
  rect(135,635,15,15);
  rect(85,530,15,15);
  rect(35,600,15,15);
  rect(60,600,15,15);  //Building 1 Windows End
  noFill();  //Fire Escape Fill
  rect(160,430,15,15);  //Fire Escape Building 1 Start
  line(165,430,165,445);
  line(170,430,170,445);
  line(175,445,160,465);
  rect(160,465,15,15);
  line(165,465,165,480);
  line(170,465,170,480);
  line(175,480,160,500);
  rect(160,500,15,15);
  line(165,500,165,515);
  line(170,500,170,515);
  line(175,515,160,535);
  rect(160,535,15,15);
  line(165,535,165,550);
  line(170,535,170,550);
  line(175,550,160,570);
  rect(160,570,15,15);
  line(165,570,165,585);
  line(170,570,170,585);
  line(175,585,160,605);
  rect(160,605,15,15);
  line(165,605,165,620);
  line(170,605,170,620);
  line(175,620,160,640);
  rect(160,640,15,15);
  line(165,640,165,655);
  line(170,640,170,655);
  line(175,655,175,675);  //Fire Escape Building 1 End
  line(15,400,15,390);  //Water Tower Start
  line(25,400,25,390);
  line(15,395,25,395);
  fill(0);
  rect(13,370,14,20);
  triangle(10,370,30,370,20,363);  //Water Tower End
  beginShape();  //Batman Start
  vertex(155,390);
  vertex(155,400);
  vertex(145,400);
  vertex(145,390);
  vertex(147.5,390);
  vertex(148,385);
  vertex(148.5,387);
  vertex(151.5,387);
  vertex(152,385);
  vertex(152.5,390);
  endShape(CLOSE);  //Batman End
  rect(250,600,850,100);  //Building 2
  fill(255);  //Dome Fill
  arc(900,600,250,100,PI,PI+PI);  //Building 2 Dome
  line(900,600,900,550);  //Dome Support Start
  line(900,550,800,600);
  line(900,550,1000,600);  //Dome Support End
  fill(0);  //Building Fill
  rect(550,350,200,250);  //Building 3
  fill(255);  //Building 3 Window Fill
  rect(560,375,15,15);  //Building 3 Windows Start
  rect(635,375,15,15);
  rect(585,410,15,15);
  rect(660,445,15,15);
  rect(695,515,15,15);
  rect(610,480,15,15);
  rect(585,480,15,15);  //Building 3 Windows End
  fill(0);
  triangle(560,350,740,350,740,300);  //Building 3 Spire
  rect(200,500,50,200);  //Building 4
  arc(225,500,50,50,PI,PI+PI);  //Building 4 Dome
  stroke(255);
  beginShape();  //Batman Graffiti Start
  vertex(290,605);
  vertex(290,655);
  vertex(320,655);
  vertex(320,605);
  vertex(310,620);
  vertex(300,620);
  endShape(CLOSE);  //Batman Graffiti End
  stroke(0);
  beginShape();  //Building 5 Start
  vertex(265,700);
  vertex(265,475);
  vertex(275,465);
  vertex(275,700);
  endShape(CLOSE);  //Building 4 End
}

void keyPressed(){
  rect(10,425,15,15);  //Building 1 Windows Power Surge Start
  rect(10,460,15,15);
  rect(35,425,15,15);
  rect(60,495,15,15);
  rect(135,635,15,15);
  rect(85,530,15,15);
  rect(35,600,15,15);
  rect(60,600,15,15);  //Building 1 Windows Power Surge End
}

void mousePressed(){
  rect(560,375,15,15);  //Building 3 Windows Power Surge Start
  rect(635,375,15,15);
  rect(585,410,15,15);
  rect(660,445,15,15);
  rect(695,515,15,15);
  rect(610,480,15,15);
  rect(585,480,15,15);  //Building 3 Windows Power Surge End
}
