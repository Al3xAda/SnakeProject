import java.util.LinkedList;
import java.util.ArrayList; 
private Wand[][] spfa =new Wand[15][15];
private Spielfeld spielfeld;
private Datenstruktur ds=new Datenstruktur();
private Koordinatenschlange coordSchl=new Koordinatenschlange();
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
    
 public Datenstruktur getDs(){
   return ds;
 }
