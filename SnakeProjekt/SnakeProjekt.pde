import java.awt.event.KeyEvent;
private Wand[][] spfa =new Wand[15][15];
private Spielfeld spielfeld;
private Datenstruktur ds=new Datenstruktur();
private Koordinatenschlange coordSchl=new Koordinatenschlange();
private Schlange visualSnake=new Schlange();
private int steuerkurs;
Reservoir r=new Reservoir();
void setup () {
  size(850, 850);
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
  if (ds.getSnakePart(0).getPosArr()[0]%r.unterteilung==0 && ds.getSnakePart(0).getPosArr()[1]%r.unterteilung==0 /*&& !vorherGedreht*/) {
    ds.move(steuerkurs, spielfeld.apfelinSchlange());
    steuerkurs=0;
  } else {
    //ds.move(0, spielfeld.apfelinSchlange());
    ds.move(0, false);
  }
  visualSnake.createSnake();
  spielfeld.setzeApfel();
  spielfeld.apfelEssen();
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
