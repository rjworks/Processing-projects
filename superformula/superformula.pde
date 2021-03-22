float r;
float x;
float y;
void setup() {
  size(400, 400);
  strokeWeight(1);
  float a = 1, b = 1;
  float m1 = 2, m2 = 10;
  float n1 = 1.5, n2 = 1, n3 = 1;
  colorMode(HSB, 100);
}
void draw() {
  background(0);
  translate(width/2, height/2);

  //Black supershape
  stroke(0);
  float a = 1, b = 1;
  float m1 = 2, m2 = 10;
  float n1 = 1.5, n2 = 2, n3 = 1, scale = 50;
  supershape(a, b, m1, m2, n1, n2, n3, scale);

  //Red supershape
  //REQ 2: call supershape again with a different set of values. 
  //print("o");
  supershape(1, 1, 88, 64, -20, 1, 1, scale);
}

void supershape(float a, float b, float m1, float m2, float n1, float n2, float n3, float scale) {
  /*REQ 1: Add a loop here. 
   The loop veriable is an angle "theta" that changes from 0 to 2*PI with a very small increment
   In each iteration of the loop, do the following:
   1) compute r using the formula given in the assignment
   2) compute x = r * cos(theta) and y = r * sin(theta)
   3) put a point at (x,y)
   */
  for (float i = 0; i < 2*PI; i+=0.01) {
    r = pow(pow(abs(cos((m1*i)/4)/a), n2) + pow(abs(sin((m2*i)/4)/b), n3), -1/n1 );
    x = scale*r * cos(i);
    y = scale*r * sin(i);
    point(x, y);
    strokeWeight(2);
    float hue = i*100/(2*PI);
    stroke(hue, 100, 100); 
  }
}
