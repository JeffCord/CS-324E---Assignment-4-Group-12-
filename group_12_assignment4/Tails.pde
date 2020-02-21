class Tails extends Character {
  color c = color(255, 255, 0);
  float size = 100;

  float moveSpeedX = width/160;
  float moveSpeedY = -height/160;
  float moveSpeedXOriginal = moveSpeedX;
  float moveSpeedYOriginal = moveSpeedY;
  
  float horiDisplacement = 0;
  float leftLimit = -20;
  float rightLimit = 20;

  boolean rising = true;
  boolean goingLeft = false;

  Tails (float x, float y, float spinSpeed) {
    super(x, y, spinSpeed);
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
    }

    //float distFromMidY = dist(x, y, x, height/2);

    //if (rising) {
    //  if (y < midY) {
    //    moveSpeedY *= 0.95;
    //  } else if (y > midY) {
    //    moveSpeedY *= 1.05;
    //  }
    //} else {
    //  if (y < midY) {
    //    moveSpeedY *= 1.05;
    //  } else if (y > midY) {
    //    moveSpeedY *= 0.95;
    //  }
    //}

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

    x += moveSpeedX;
    y += moveSpeedY;
  }

  void spin() {
    noStroke();
    fill(c);

    push();
    translate(x, y);
    rotate(angle);
    ellipse(0, 0, size - 10, size);
    pop();

    angle += spinSpeed;
  }
}
