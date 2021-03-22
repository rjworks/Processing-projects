float speedX = 2, speedY = 3;
float x=150, y=150, R = 50;
void setup() {
  size(300, 300);
  stroke(255); 
  strokeWeight(2); 
  noFill();
  colorMode(HSB, 100);
}  

void draw() {
  background(0);
  // move spider-web
  x += speedX;
  y += speedY;
  translate(x, y);
  // bounce spider-web
  if (x > width-R || x < R ) speedX = -speedX;
  if (y > height-R || y < R)  speedY = -speedY;
  // draw spider-web
  // REQ1: use loops here to draw many concentric circles. 
  for (int i = 0; i < 6; i++) {
    float hue = i*100/6;
    stroke(hue, 100, 100); 
    ellipse(0, 0, i*R/3, i*R/3);
  }
  // REQ2: use loops here to draw many lines. Differnt lines have differnt theta values. 
  for (int i = 0; i < 12; i++) {
    float hue = i*100/12;
    stroke(hue, 100, 100); 
    float theta = i*2*PI/12;
    float x1 = R*cos(theta), y1 = R*sin(theta);
    line(0, 0, x1, y1);
  }
}
