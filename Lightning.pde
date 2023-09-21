int counter = 0;
void setup() {
  size(500, 500);
}

void draw() {
  if (counter < 2) {
    fill(184, 115, 51);
    rect(240, 400, 30, 10);
    rect(250, 410, 10, 50);
  }
  fill(225, 225, 225, 15);
  rect(0, 0, 500, 400);
  if (counter > 1) {
    fill(0);
    text("Lucky You!", 50, 450);
  }
}

void mousePressed() {
  int x = mouseX;
  int y = 0;
  while (y < 400) {
    line(x, y, x+=(int)(Math.random()*18 - 9), y+=(int)(Math.random()*9));
    if (y >= 400) {
      if (x >= 240 && x <= 270) {
        counter += 1;
      }
    }
  }
}
