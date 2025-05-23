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
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  visualSnake.createSnake();
  //ds.move(0, false);
}
private int bestimmer=0;
void draw () {
  //coordSchl.printCoord();
  //println("SChalnegn_Laenge: "+ds.getLength());
  spielfeld.zeichneFeld();
  if (bestimmer<149) {
    ds.move(90, false);
  } else  if (bestimmer==150) {
    ds.move(-90, false);
  } else if (bestimmer<299) {
    ds.move(0, false);
  } else if (bestimmer==300) {
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
