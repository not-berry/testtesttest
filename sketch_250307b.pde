color pink = #F21D41;

PGraphics pg;

int rColor, gColor, bColor;
float sliderX;
float thing;
int change;

void setup() {
  size(1200,800);
  //frameRate(60);
  background(255);
  strokeWeight(10);
  sliderX = 200;
  change = 0;
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
  
  if(change == 1 && mouseX > 40 && mouseX < 160) {
    sliderX = mouseX;
  }
  thing = map(sliderX, 100,700, 0,255);
  stroke(255);
  line(100,300, 700,300);
  stroke(pink);
  line(100,300, sliderX,300);
  circle(sliderX, 175, 25);
  
  stroke(rColor, gColor, bColor);
  stroke(pink);
}

void mousePressed() {
  drawing();
  
  if (mouseX > 150 && mouseX < 200 && mouseY > 0 && mouseY < 200) {
    change = 1;
  }
}

void mouseDragged() {
  drawing();
}
void mouseReleased() {
  change = 0;
}

void drawing() {
  if(mouseX > 200) {
    line(pmouseX,pmouseY, mouseX,mouseY);
  }
}
