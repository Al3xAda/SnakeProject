class Wand {
  String typ;
  color farbe;

  Wand(String typ) {
    this.typ = typ;
    switch (typ) {
      case "wand":
        farbe = color(200, 50, 50);
        break;
      case "apfel":
        farbe = color(0, 200, 0);
        break;
      default:
        farbe = color(50);
        break;
    }
  }

  void zeichne(int x, int y) {
    fill(farbe);
    stroke(100);
    rect(x, y, 50, 50);
  }
}
