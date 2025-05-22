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
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  visualSnake.createSnake();
}
private int bestimmer=0;
void draw () {
  coordSchl.printCoord();
  spielfeld.zeichneFeld();
  if (bestimmer<15) {
    ds.move(0, false);
  } else  if (bestimmer==16) {
    ds.move(90, false);
  } else if (bestimmer<30) {
    ds.move(0, false);
  } else if (bestimmer==30) {
    ds.move(-90, false);
    bestimmer=0;
  }
  visualSnake.createSnake();
  delay(100);
  bestimmer++;
}

public Datenstruktur getDs() {
  return ds;
}

public Koordinatenschlange getCoordSchl() {
  return coordSchl;
}
