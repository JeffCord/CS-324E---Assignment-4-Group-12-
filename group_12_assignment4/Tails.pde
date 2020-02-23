class Tails extends Character {
  color c = color(255, 255, 0);
  float size = 100;

  float moveSpeedX = width/160;
  float moveSpeedY = -height/320;
  float moveSpeedXOriginal = moveSpeedX;
  float moveSpeedYOriginal = moveSpeedY;
  
  int horiDisplacement = 0;
  float leftLimit = -20;
  float rightLimit = 20;

  boolean rising = true;
  boolean goingLeft = false;
  
  WhiteTails whiteTails;

  Tails (float x, float y, float spinSpeed) {
    super(x, y, spinSpeed);
    whiteTails = new WhiteTails(x, y, size);
  }

  void move() {
    fly();
    spin();
  }

  void fly() {
    // moves Tails up or down
    if (y <= size / 2) {
      rising = false;
      moveSpeedY = abs(moveSpeedYOriginal);
    } else if (y >= height - (size / 2)) {
      rising = true;
      moveSpeedY = moveSpeedYOriginal;
    } else {
      float distFromMidY = dist(x, y, x, height/2);
      float smoothY = abs(moveSpeedYOriginal) * ((height/2) - distFromMidY) / (height/2);
      if (rising) {
        moveSpeedY = moveSpeedYOriginal - smoothY;
      } else {
        moveSpeedY = abs(moveSpeedYOriginal) + smoothY;
      }
    }

    // moves Tails left and right
    if (goingLeft) {
      horiDisplacement -= 1;
      if (horiDisplacement <= leftLimit) {
        goingLeft = false;
        moveSpeedX = abs(moveSpeedX);
      }
    } else {
      horiDisplacement += 1;
      if (horiDisplacement >= rightLimit) {
        goingLeft = true;
        moveSpeedX *= -1;
      }
    }
    
    // update x and y positions
    x += moveSpeedX;
    y += moveSpeedY;
  }

  // makes Tails rotate in place
  void spin() {
    noStroke();
    
    // white tails rotate in opposite direction as the body
    push();
    translate(x, y);
    rotate(angle);
    whiteTails.display();
    pop();

    push();
    translate(x, y);
    rotate(-angle);
    
    // yellow body
    fill(c);
    ellipse(0, 0, size - 10, size);
    
    pop();
    
    angle += spinSpeed;
  }
}
