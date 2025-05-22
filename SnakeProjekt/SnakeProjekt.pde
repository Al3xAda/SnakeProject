import java.util.LinkedList;
import java.util.ArrayList; 
Wand[][] spfa =new Wand[15][15];
Spielfeld spielfeld;

void setup () {
    size(850, 850);
    spielfeld = new Spielfeld();
    spielfeld.setzeWand();

    }

    void draw () {
    background(0);
    spielfeld.zeichneFeld();
    
    }
