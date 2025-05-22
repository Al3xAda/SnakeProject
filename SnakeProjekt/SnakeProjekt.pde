import java.util.LinkedList;
import java.util.ArrayList; 
Wand[][] spfa =new Wand[15][15];
Spielfeld spielfeld;
Datenstruktur logSchl=new Datenstruktur();
Koordinatenschlange coordSchl=new Koordinatenschlange();
void setup () {
    size(850, 850);
    logSchl.initialisiere();
    spielfeld = new Spielfeld();
    spielfeld.setzeWand();

    }

    void draw () {
    background(0);
    spielfeld.zeichneFeld();
    
    }
    
    public Datenstruktur getLogSchl() {
      return logSchl;
    }
