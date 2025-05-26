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
  spielfeld = new Spielfeld();
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  visualSnake.createSnake();
}
private int bestimmer=0;
private boolean laenger=false;
void draw () {
  coordSchl.printCoord(false);
  spielfeld.zeichneFeld();
  if (bestimmer<149) {
    ds.move(90, false);
  } else  if (bestimmer==150) {
    ds.move(-90, false);
  } else if (bestimmer<225) {
    ds.move(0, laenger);
    if (bestimmer==199) {
      laenger=true;
    } else {
      laenger=false;
    }
  } else if (bestimmer==225) {
    ds.move(-90, false);
    //laenger=true;
    bestimmer=0;
  }
  visualSnake.createSnake();
  delay(10);
  bestimmer++;
  //spielfeld.setzeApfel();
}

public Datenstruktur getDs() {
  return ds;
}

public Koordinatenschlange getCoordSchl() {
  return coordSchl;
}
