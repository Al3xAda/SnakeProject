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
private boolean laenger=true;
void draw () {
  //coordSchl.printCoord();
  //println("SChalnegn_Laenge: "+ds.getLength());
  spielfeld.zeichneFeld();
  if (bestimmer<149) {
    ds.move(90, false);
  } else  if (bestimmer==150) {
    ds.move(-90, false);
  } else if (bestimmer<225) {
    ds.move(0, laenger);
    if (bestimmer==175) {
      laenger=false;
    }
  } else if (bestimmer==225) {
    ds.move(-90, false);
    laenger=true;
    bestimmer=0;
  }
  visualSnake.createSnake();
  delay(10);
  bestimmer++;
}

public Datenstruktur getDs() {
  return ds;
}

public Koordinatenschlange getCoordSchl() {
  return coordSchl;
}
