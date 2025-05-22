import java.util.LinkedList;
import java.util.ArrayList; 
Wand[][] spfa =new Wand[15][15];
Spielfeld spielfeld;
Schlange snake=new Schlange();
Datenstruktur ds=snake.getDs();
Koordinatenschlange coordSchl=new Koordinatenschlange();
void setup () {
    size(850, 850);
    ds.initialisiere();
    coordSchl.printCoord();
    spielfeld = new Spielfeld();
    spielfeld.setzeWand();

    }

    void draw () {
    background(0);
    spielfeld.zeichneFeld();
    
    }
 
