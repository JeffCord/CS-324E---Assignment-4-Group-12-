class Ring {
  float dx, dy;
  int diameter;
  int alpha;

  //constructor
  Ring(float dx, float dy, int diameter) {
    this.dx = dx;
    this.dy = dy;
    this.diameter = diameter;
    alpha = 150;
  }

  void display() {
    strokeWeight(5);
    stroke(colors, alpha); //stroke(rgb, alpha)
    ellipse(dx, dy, diameter, diameter);
  }


  //gradually
  void fadeIn() {
    //(251, 208, 0)
    if (alpha < 255) {
      delay(5);
      alpha++;
    }
  }

  //immediately
  void disappear() {
    if (alpha > 0) {
      alpha = 0;
    }
  }
}
