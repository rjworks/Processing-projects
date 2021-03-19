float Xb, Yb, r, speedX, speedY;    //ball location, size, and speed
float Xp, Yp, w, h;   //paddle location, wdith and height 
float Xp2=130, Yp2;
boolean isGameOver = false;         // when true, just draw the GameOver message and stop the animation loop to end the game  
int score = 0;

void setup() {
  size(400, 400);

  // initialize ball attributes
  Xb = random(r, width-r);      
  Yb = 30;                         
  r = 15;
  speedX = int(random(2, 4));   
  speedY = int(random(2, 4));

  // initialize paddle attributes
  w = 30; 
  h = 8;
  Xp = width/2;  
  Yp = height - h;

  // hide mouse cursor
  noCursor();
}

void draw() {  
  background(0);

  if (!isGameOver) {              //play as long as it is not game over

    // DRAW game elements
    // draw Ball
    fill(255);   
    noStroke();
    ellipse(Xb, Yb, 2*r, 2*r);
    // draw paddle
    stroke(0, 255, 0);  
    strokeCap(ROUND);  
    strokeWeight(h);
    line(Xp-w, Yp, Xp+w, Yp);
    // draw top paddle
    stroke(0, 255, 0);  
    strokeCap(ROUND);  
    strokeWeight(h);
    line(Xp2+w, 0, Xp2+w*2.9, 0);
    // draw score
    fill(255, 0, 0); 
    textAlign(LEFT);  
    textSize(16);
    text("Score: " + score, 5, 15);
    //print("yb: "+Yb+"\n");
   // print("r: "+r+"\n");
    // MOVE game elements
    // move Paddle
    Xp = mouseX;
    // move ball 
    Xb += speedX;
    Yb += speedY;

    // CHECK for collisions
    // REQ1: Add code to bounce the ball off the two sides and the top edge        [+2 marks]
    // REQ2: Add code to check if ball lands on the paddle. Here is the pseudo-code:
    // if the ball is at the bottom edge (hint: check Yb)                          [+1 mark]  
    //     if ball lands on paddle (hint: see the assignment on how to check this) [+2 marks]  
    //         increment score, bounce ball up, and increase speed by 10%          [+2 marks]
    //     else                                                                    
    //         set isGameOver to true;      [+1 mark]
 // System.out.println(Yb);
  // System.out.println(r);
  
    //bot paddle
    if (Yb > height-r || Yb < r) {
      if (dist(Xb, Yb, Xp, Yp) < w+r) {
        //incremenet score
        score++;
        //bounce
        speedY *= -1;
      } else if (dist(Xb, Yb, Xp2, Yp2) > w+r) {
        //print("init");
        //incremenet score
        score++;
        //bounce
        speedY *= -1;
      }else {
        isGameOver = true ;
      }
    } else {
      //print("Check collisions"+random(1,100)+"\n");
      checkCollisions();
    }
  } else { // if game over
    //REQ3: Add code for putting the GameOver message and stoping the animation loop [+2 marks]
    noStroke();
    fill(255, 0, 0);
    rect(15, 160, 370, 100);
    textSize(30);
    fill(255);
    text("GAME OVER!", 120, 210);
    textSize(20);
    text("Score: "+score, 170, 240);
  }
}
void checkCollisions() {
  Xb+=speedX;
  if ( Xb > width-r || Xb < r )
    speedX *= -1;
  // y+=speedY;
  if (Yb > height-r || Yb < r)
    speedY *= -1;
}
//no other functions are required! (e.g. don't implement mousePressed, keyPressed, etc)
// but what about for bonus marks?
void keyPressed() {
  switch(keyCode) {
  case LEFT:
    //print((Xp2-18));
    if (Xp2-18>0) {
      Xp2-=20;
    } else {
      Xp2=-70;
    }
    break;
  case RIGHT:
    if (Xp2+18<width) {
      Xp2+=20;
    } else {
      Xp2=360;
      print(Xp2);
    }
    break;
  }
}
