float x1, y1, x2, y2;
int c = 0;
int d = 100;
//attributes of the two circles - change to get differnt outputs
float r1 = 120, r2=160;
float theta1 = 0, theta2 = PI/4;
float speedTh1 = PI/35, speedTh2 = PI/50;  

void setup() {
  size(400, 400);
  background(0);
  stroke(255, 255, 0, 50);  // line color
  fill(255);             // text color
  text("INNER Radius = " + r1 + "  Speed Theta 1 =  PI / " + PI/speedTh1, 10, 15);
  text("OUTER Radius = " + r2 + "  Speed Theta 2:  PI / " + PI/speedTh2, 10, 30);
}
void draw() {
  translate(width/2, height/2);
  x1 = r1*sin(theta1);
  y1 = r1*cos(theta1);
  x2 = r2*sin(theta2);
  y2 = r2*cos(theta2);
  colorMode(HSB, 100);
  c = c < 100 ? ++c : 0;
  d = d > 0 ? --d : 100;
  stroke(c, d, 100); 
  line(x1, y1, x2, y2);

  theta1+=0.08;
  theta2+=0.15;
}
