color pink = #F21D41;

PGraphics pg;

float rColor, gColor, bColor;
float sliderX1, sliderX2, sliderX3;
float thing;
int change1, change2, change3;

void setup() {
  size(1200,800);
  //frameRate(60);
  background(255);
  strokeWeight(10);
  textSize(30);
  sliderX1 = 100;
  change1 = 0;
  rColor = 0;
  gColor = 0;
  bColor = 0;
}

void draw() {
  fill(50);
  stroke(50);
  strokeWeight(0);
  rect(0,0, 200,800);
  
  strokeWeight(10);
  fill(50);
  stroke(0);
  circle(35,40, 50);
  circle(100,40, 50);
  circle(165,40, 50);
  circle(35,110, 50);
  circle(100,110, 50);
  circle(165,110, 50);
  
  if(change1 == 1 && mouseX > 40 && mouseX < 180) {
    sliderX1 = mouseX;
  }
  rColor = map(sliderX1, 40,180, 0,255);
  gColor = map(sliderX1, 40,180, 0,255);
  bColor = map(sliderX1, 40,180, 0,255);
  
  fill(0);
  text("R", 10,183);
  stroke(255);
  line(40,175, 180,175);
  stroke(0);
  fill(0);
  strokeWeight(11);
  line(40,175, sliderX1,175);
  strokeWeight(0);
  circle(sliderX1, 175, 25);
  
  fill(0);
  text("G", 10,183);
  stroke(255);
  line(40,225, 180,225);
  stroke(0);
  fill(0);
  strokeWeight(11);
  line(40,225, sliderX2,225);
  strokeWeight(0);
  circle(sliderX2, 225, 25);
  
  fill(0);
  text("B", 10,183);
  stroke(255);
  line(40,275, 180,275);
  stroke(0);
  fill(0);
  strokeWeight(11);
  line(40,275, sliderX3,275);
  strokeWeight(0);
  circle(sliderX3, 275, 25);
  
  stroke(rColor, gColor, bColor);
  //stroke(pink);
  
}

void mousePressed() {
  drawing();
  
  if (mouseY > 150 && mouseY < 200 && mouseX > 0 && mouseX < 200) {
    change1 = 1;
  }
  if (mouseY > 200 && mouseY < 250 && mouseX > 0 && mouseX < 200) {
    change3 = 1;
  }
  if (mouseY > 250 && mouseY < 300 && mouseX > 0 && mouseX < 200) {
    change3 = 1;
  }
}

void mouseDragged() {
  drawing();
}
void mouseReleased() {
  change1 = 0;
  change2 = 0;
  change3 = 0;
}

void drawing() {
  if(mouseX > 200) {
    strokeWeight(10);
    line(pmouseX,pmouseY, mouseX,mouseY);
  }
}
