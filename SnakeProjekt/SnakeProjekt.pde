import java.awt.event.KeyEvent;
private Wand[][] spfa =new Wand[15][15];
private Spielfeld spielfeld;
private Datenstruktur ds=new Datenstruktur();
private Koordinatenschlange coordSchl=new Koordinatenschlange();
private Schlange visualSnake=new Schlange();
private int steuerkurs;
private boolean vorherGedreht;
Reservoir r=new Reservoir();
void setup () {
  size(850, 850);
  vorherGedreht=false;
  steuerkurs=0;
  ds.initialisiere();
  spielfeld = new Spielfeld();
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  visualSnake.createSnake();
}
void draw () {
  spielfeld.zeichneFeld();
  println("Steuerkurs: "+steuerkurs);
  println("Richtung: "+ds.getSnakePart(0).getDirection());
    switch(keyCode) {
  case KeyEvent.VK_LEFT:
    println("Input: lnks");
    break;
  case KeyEvent.VK_RIGHT:
    println("Input: rechts");
    break;
  case KeyEvent.VK_UP:
    println("Input: oben");
    break;
  case KeyEvent.VK_DOWN:
    println("Input: unten");
    break;
  }
  if (ds.getSnakePart(0).getPosArr()[0]%r.unterteilung==0 && ds.getSnakePart(0).getPosArr()[1]%r.unterteilung==0 /*&& !vorherGedreht*/) {
    ds.move(steuerkurs, false);
    vorherGedreht=true;
    steuerkurs=0;
  } else {
    ds.move(0, false);
    vorherGedreht=false;
  }
  visualSnake.createSnake();
  spielfeld.setzeApfel();
  //delay(10);
}

public Datenstruktur getDs() {
  return ds;
}

public Koordinatenschlange getCoordSchl() {
  return coordSchl;
}

void keyPressed() {
  //println("pressed");
  switch(keyCode) {
  case KeyEvent.VK_LEFT:
    switch(ds.getSnakePart(0).getDirection()) {
    case 0:
      steuerkurs=-90;
      break;
    case 90:
      steuerkurs=0; //entgegengesetzt zur Richtung
      break;
    case 180:
      steuerkurs=90;
      break;
    case 270:
      steuerkurs=0;
      break;
    }
    break;
  case KeyEvent.VK_RIGHT:
    switch(ds.getSnakePart(0).getDirection()) {
    case 0:
      steuerkurs=90;
      break;
    case 90:
      steuerkurs=0;
      break;
    case 180:
      steuerkurs=-90;
      break;
    case 270:
      steuerkurs=0;  //entgegengesetzt zur Richtung
      break;
    }
    break;
  case KeyEvent.VK_UP:
    switch(ds.getSnakePart(0).getDirection()) {
    case 0:
      steuerkurs=0;
      break;
    case 90:
      steuerkurs=-90;
      break;
    case 180:
      steuerkurs=0; //entgegengesetzt zur Richtung
      break;
    case 270:
      steuerkurs=90;
      break;
    }
    break;
  case KeyEvent.VK_DOWN:
    switch(ds.getSnakePart(0).getDirection()) {
    case 0:
      steuerkurs=0; //entgegengesetzt zur Richtung
      break;
    case 90:
      steuerkurs=90;
      break;
    case 180:
      steuerkurs=0;
      break;
    case 270:
      steuerkurs=-90;
      break;
    }
    break;
  }
}
