import java.util.LinkedList;
import java.util.ArrayList;
private Wand[][] spfa =new Wand[15][15];
private Spielfeld spielfeld;
private Datenstruktur ds=new Datenstruktur();
private Koordinatenschlange coordSchl=new Koordinatenschlange();
private Schlange visualSnake=new Schlange();
void setup () {
  size(850, 850);
  ds.initialisiere();
  coordSchl.printCoord();
  spielfeld = new Spielfeld();
  /*spielfeld.setzeWand();
  spielfeld.zeichneFeld();*/
  visualSnake.createSnake();
}

void draw () {
  coordSchl.printCoord();
  //spielfeld.zeichneFeld();
  ds.move(0, false);
  visualSnake.createSnake();
  delay(1000);
}

public Datenstruktur getDs() {
  return ds;
}

public Koordinatenschlange getCoordSchl() {
  return coordSchl;
}
