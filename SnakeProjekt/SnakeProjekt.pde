
/*Schlange gameSnake=new Schlange();
Spielfeld spf=new Spielfeld();*/
private Datenstruktur logSchl=new Datenstruktur();
private Koordinatenschlange posSchl=new Koordinatenschlange();
//Main-Klasse
void setup () {
    size(800, 600);
    background(0);
    noStroke();
    fill(255);
    logSchl.initialisiere();
    //println(logSchl.getLength());
    posSchl.printCoord();
    //spf.zeichneFeld();

    }

    void draw () {
    // Clear the screen 
    background(0, 0, 0);
    // Draw the snake
    
    }
    
    public Datenstruktur getLogSchl() {
      return logSchl;
    }
