void settings() {
  size(500, 500);
}
HappyFace h1, h2, h3;
void setup() {
  h1 = new HappyFace(width/5, height/5, width/7, color(0, 153, 0), color(255), 1, 2);
  h2 = new HappyFace(width/2, height/2, width/4, color(255, 255, 0), color(0), 2, 3);
  h3 = new HappyFace(width/3, height/3, width/5, color(255, 215, 0), color(0, 76, 153), 3, 1);
}

void draw() {
  background(0);
  //translate(width/2, height/2);
  h1.display(); 
  h1.move(); 
  h1.bounce();
  h2.display(); 
  h2.move(); 
  h2.bounce();
  h3.display(); 
  h3.move(); 
  h3.bounce();
}
