int startX;
int startY;
int endX;
int endY;
int total = 0;
void setup() {
  startX = width/2;
  startY = 0;
  endX = 0;
  endY = 150;
  size(800, 500);
  background(20);
}
void draw() {
  cloud();
}
void mousePressed() {
  startX = (width/2) + (int)(Math.random()*70)-35;
  startY = 0;
  endX = 0;
  endY = 150;
  lightning();
}

void lightning() {
  float x = 200;
  background(20);
  while (startY < height) {
    endX = startX + (int) (Math.random()*18)-9;
    endY = startY + (int) (Math.random()*18);
    stroke(#E0FF00, x); //yellow
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    x-=5;
  }
}

void cloud() {
  beginShape();
  fill(50);
  stroke(50);
  ellipse(width/2, 17, 60, 60);
  ellipse(350, 20, 60, 60);
  ellipse(315, 10, 50, 50);
  ellipse(440, 10, 50, 50);
}
