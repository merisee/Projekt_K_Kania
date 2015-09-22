int angle = 0;
boolean clockwise = true;
int angleStep = 1;

void setup() {
  size(500,500);
  rectMode(CENTER);
  frameRate(144);
  loop();
}

void draw() {
  background(255);
  smooth();
  if(clockwise)
    angle += angleStep;
  else
    angle -= angleStep;
    
  translate(width/2, height/2);
  rotate(radians(angle));

  if (angle == 360) {
    clockwise = false;
  } else if (angle == 0){
    clockwise = true;
  }
  
  display(angle);
}

void display(int angle) {
  color c = color(angle*255/360, 255-angle*255/360, 128-angle*255/720);
  fill(c);
  rect(0,0,250,250);
}