class rain {
  float x = random(width); //x position: anywhere along the width of screen
  float y = random(-200, -100); //y position: drop begins off screen
  float ySpeed = random(4, 10);
  float len = random(10, 20);

  //determine the shape and the speed
  void fall() {
    y += ySpeed;

    //repositions the drops after drops off the screen
    if (y > height) { 
      y = random(-200, -100);
      ySpeed = random(4, 10);
    }
  }

  //display the drops
  void show() {
    stroke(40, 149, 226); //blue color of the rain drops
    line(x, y, x, y + len); //draws the line with 2 points for rain the rain
  }
}
