
  Enterprise d;

  void settings() {
    size(800, 800);
    d = new Enterprise();
  }

  void draw() {

    d.bewege();
    d.baueSchutzschildAuf();
  }
