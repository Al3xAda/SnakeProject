import java.awt.event.KeyEvent;
private Wand[][] spfa;
private Spielfeld spielfeld;
private Datenstruktur ds;
private Koordinatenschlange coordSchl;
private Schlange visualSnake;
private UserInterface ui;
private int steuerkurs;
private boolean appleEaten;
Reservoir r=new Reservoir();
void setup () {
  fill(0, 0, 0);
  textSize(40);
  text("Press 'r' to restart and 'x' to exit the game :)", (r.verschiebung*2), ((r.seiteGraphisch*r.nFelder)+(7*r.verschiebung)));
  appleEaten=false;
  spfa =new Wand[15][15];
  ds = new Datenstruktur();
  coordSchl=new Koordinatenschlange();
  visualSnake=new Schlange();
  ui = new UserInterface();
  size(850, 850);
  steuerkurs=0;
  ds.initialisiere();
  spielfeld = new Spielfeld();
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  spielfeld.setzeWand();
  spielfeld.zeichneFeld();
  visualSnake.createSnake();
  spielfeld.setzeApfel();
  
}
void draw () {
  //coordSchl.printCoord(true);
  if (spielfeld.apfelinSchlange()) {
    appleEaten=true;
    
  }
  try {
    spielfeld.zeichneFeld();
    if (ds.getSnakePart(0, false).getPosArr()[0]%r.unterteilung==0 && ds.getSnakePart(0, false).getPosArr()[1]%r.unterteilung==0) {
      ds.move(steuerkurs, appleEaten);
      if (appleEaten) {
        ui.erhoeheScore(1);
        spielfeld.setzeApfel();
      }
      
      appleEaten=false;
      steuerkurs=0;
    } else {
      ds.move(0, false);
    }
    visualSnake.createSnake();
    if (spielfeld.schlangeInSchlange() || spielfeld.schlangeInWand() || spielfeld.hasWon()) {
      setup();
    }
    
  }
  catch(NullPointerException e) {
    println("Nullpointer");
    exit();
  }
  ui.showScore(770, 40);
}

public Datenstruktur getDs() {
  return ds;
}

public Koordinatenschlange getCoordSchl() {
  return coordSchl;
}

void keyPressed() {
  if (key=='r') {
    setup();
  }
  if (key=='x') {
    exit();
  }
  switch(keyCode) {
  case KeyEvent.VK_LEFT:
    switch(ds.getSnakePart(0, false).getDirection()) {
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
    switch(ds.getSnakePart(0, false).getDirection()) {
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
    switch(ds.getSnakePart(0, false).getDirection()) {
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
    switch(ds.getSnakePart(0, false).getDirection()) {
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
