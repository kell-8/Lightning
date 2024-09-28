int startX = 150;
int startY = 0;
int endX = 0;
int endY = 0;

void setup() {
  size(300, 300);
  strokeWeight(2);
  frameRate(200);
  background(81, 65, 118);
}

void draw() {
  boolean shift = false;
  for (int y = 20; y < 300; y = y + 25) {
    for (int x = 20; x < 300; x = x + 40) {
      noStroke();
      fill(225, 233, 242);
      if (shift == true) {
        ellipse(x + 10, y + 10, 3, 3);
      } else {
        ellipse(x, y, 3, 3);
      }
    }
    if (shift == true) {
      shift = false;
    } else {
      shift = true;
    }
  }

  noStroke();
  fill(119, 108, 144);
  ellipse(150, 30, 130, 110);
  ellipse(100, 35, 150, 130);
  ellipse(50, 35, 130, 110);
  ellipse(250, 35, 130, 110);

  fill(230, 227, 237);
  ellipse(150, 15, 130, 110);
  ellipse(100, 20, 150, 130);
  ellipse(50, 20, 130, 110);
  ellipse(250, 20, 130, 110);

  fill(250, 249, 240);
  stroke(245, 241, 200);

  if (startY <= 300) {
    endX = startX + (int)(Math.random() * 50)-25;
    endY = startY + (int)(Math.random() * 30);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  background(81, 65, 118);
  endX = 0;
  endY = 0;
  startX = 150;
  startY = 0;
}
