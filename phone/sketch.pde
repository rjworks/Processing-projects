PImage whatsAppLogo;
PImage twitterLogo;
PImage tinderLogo;
PImage steamLogo;
PImage linkedInLogo;
PImage batteryIcon;
PImage wifiIcon;
PImage clockIcon;
PFont klavika;
public void setup() {
  size(750, 800);
  background(0xffa39796);
  whatsAppLogo = loadImage("whatsapp-64.png");
  twitterLogo = loadImage("twitter-64.png");
  tinderLogo = loadImage("tinder-64.png");
  steamLogo = loadImage("steam-64.png");
  linkedInLogo = loadImage("linkedin-64.png");
  batteryIcon = loadImage("battery-32.png");
  wifiIcon = loadImage("wifi-32.png");
  clockIcon = loadImage("alarm-clock-32.png");
  // facebook font
  klavika = createFont("klavika-bold.otf", 58);
}

public void draw() {
  // make the lines thicc
  strokeWeight(3.5);
  // the phone
  stroke(0);  
  colorMode(HSB);
  // phone wallpaper
  fill(56, 100, 66);
  rect(200, 50, 335, 610, 30, 30, 0, 0);
  noFill();
  colorMode(RGB);
  // apps layer 1 facebook and whatsapp
  // facebook slot
  fill(66, 103, 178);
  noStroke();
  rect(260, 135, 70, 70, 15);

  // whatsapp slot
  fill(#4FCE5D);
  noStroke();
  rect(403, 135, 70, 70, 15);

  // Facebook logo
  fill(255);
  textFont(klavika);
  text("F", 281, 190); 

  // Whatsapp logo
  image(whatsAppLogo, 413, 145, 50, 50);

  // apps layer 2 twitter and tinder
  // twitter slot
  fill(29, 161, 242);
  rect(260, 275, 70, 70, 15);
  // twitter logo
  image(twitterLogo, 271, 286, 50, 50);

  // tinder slot
  fill(966, 66, 6);
  rect(403, 275, 70, 70, 15);
  // tinder logo
  image(tinderLogo, 412, 286, 50, 50);

  // apps layer 3 steam and linkedIn
  // steam slot
  fill(255);
  rect(261, 416, 69, 69, 15);
  // steam logo
  image(steamLogo, 260, 415, 71, 71);

  // linkedin slot
  fill(0, 97, 146);
  rect(403, 415, 70, 70, 15);
  // linkedin logo
  image(linkedInLogo, 413, 424, 50, 50);
  
  // battery icon
  image(batteryIcon, 490, 60, 32, 32);
  // clock icon
  image(clockIcon, 460, 65, 20, 20);
  // wifi icon
  image(wifiIcon, 220, 60, 32, 32);

  // home button separator
  stroke(0);
  colorMode(HSB);
  fill(44);
  rect(200, 660, 335, 90, 0, 0, 30, 30);
  pushStyle();
  colorMode(RGB);

  // home button  
  strokeWeight(7);
  fill(204, 153, 0);
  ellipse(370, 705, 70, 70);

  //charger
  noFill();
  stroke(255);
  strokeWeight(10);
  bezier(372, 757, 400, 775, 300, 775, 400, 800);
}
