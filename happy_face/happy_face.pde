class HappyFace {
  float x, y, r, speedX, speedY;
  color fillColor, outlineColor;

  HappyFace() {
    r = 50;
    x = r;
    y = r;
    speedX = 0;
    speedY = 0;
    fillColor =  color(255, 255, 0);
    outlineColor = color(255, 0, 0);
  }

  HappyFace(float x, float y, float r, color fillColor, color outlineColor, float speedX, float speedY) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.fillColor = fillColor;
    this.outlineColor = outlineColor;
    this.speedX = speedX;
    this.speedY = speedY;
  }

  void display() {
    strokeWeight(r/20);
    //face
    stroke(outlineColor);
    fill(fillColor);
    ellipse(x, y, 2*r, 2*r);                
    arc(x, y, 1.6*r, 1.6*r, .1*PI, .9*PI); //mouth
    ellipse(x+r/2, y-r/4, r/4, r/2);     //right eye
    ellipse(x-r/2, y-r/4, r/4, r/2);     //left eye
  }

  void move() {
    //move it
    x += speedX;
    y += speedY;
  }

  void bounce() {
    // bounce it
    if (x > width-r || x < r ) speedX = -speedX;
    if (y > height-r || y <r)  speedY = -speedY;
  }
}
