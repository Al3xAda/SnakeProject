class Datenstruktur extends Reservoir{
    private Koerperteile erste;
    private Koerperteile zeiger;
    
    public Koerperteile getHead() {
        if(erste==null) {
            System.out.println("Fehler: Kein Kopf");
        }
        return erste;
    }
    public void initialisiere(){
       attach(new Koerperteile(false, false, true, false, false, 90, (nFelder/2)*unterteilung, (nFelder/2)*unterteilung)); //möglichst mittige Positionierung
       attach(new Koerperteile(false, false, false, false, true, 90, ((nFelder/2)*unterteilung)-unterteilung, (nFelder/2)*unterteilung));
    }
    public void attach (Koerperteile a) {
       if(erste==null) {
         erste=a;
       } else {
        Koerperteile zeigerInt=erste;
        while(zeigerInt.getNext()!=null) {
            zeigerInt=zeigerInt.getNext();
        }
        zeigerInt.setNext(a);
        zeigerInt.setIsTail(true);
       }
    }
    private void turnVerschieben(Koerperteile k){
        if(k.getLeftTurn()){
            k.setLeftTurn(false);
            k.getNext().setLeftTurn(true);
        } else if(k.getRightTurn()){
            k.setRightTurn(false);
            k.getNext().setRightTurn(true);
        }
    }
    
    public int getLength(){
      int i=1;
      zeiger=erste;
      while(zeiger.getNext()!=null){
        i++;
        zeiger=zeiger.getNext();
      }
      return i;
    }
    
    public Koerperteile getSnakePart(int j) {
      Koerperteile zeigerInt;
      if(j<getLength()){
        zeigerInt=erste;
        int i=0;
        while(i<j) {
          zeigerInt=zeigerInt.getNext();
          i++;
        }
        return zeigerInt;
      }
      System.out.println("Fehler bei Datenstruktur - getSnakePart");
      return null;
    }
    
    public void move(int heading, boolean verlaengern) {
        zeiger=erste;
        boolean oldestLeft, oldestRight, oldLeft, oldRight;
        int[] oldestPos, oldPos;
        int oldestDirection, oldDirection, oldestVerschiebungX, oldestVerschiebungY;
        oldestLeft=zeiger.getLeftTurn();
        oldestRight=zeiger.getRightTurn();
        oldestPos=zeiger.getPosArr();
        oldestDirection=zeiger.getDirection();
        int newDirection; //Kopf anpassen
        newDirection=oldestDirection+heading;
        if(newDirection<0) { //im Intervall [0;270] verbleiben
            newDirection=270;
        } else if(newDirection>270) {
            newDirection=0;
        }
        zeiger.setDirection(newDirection);
        println("Bewegungsrichtung: "+newDirection);
        switch(newDirection) {
            case 0:
                zeiger.setPosArr(((zeiger.getPosArr()[0])-1),zeiger.getPosArr()[1]); oldestVerschiebungY=-1; oldestVerschiebungX=0;
                break;
            case 90:
                zeiger.setPosArr(zeiger.getPosArr()[0],((zeiger.getPosArr()[1])+1)); oldestVerschiebungY=0; oldestVerschiebungX=+1;
                break;
            case 180:
                zeiger.setPosArr(((zeiger.getPosArr()[0])+1),zeiger.getPosArr()[1]); oldestVerschiebungY=+1; oldestVerschiebungX=0;
                break;
            case 270:
                zeiger.setPosArr(zeiger.getPosArr()[0],((zeiger.getPosArr()[1])-1)); oldestVerschiebungY=0; oldestVerschiebungX=-1;
                break;
        }
        //System.out.println("xMove: "+zeiger.getPosArr()[1]+"  |  yMove: "+zeiger.getPosArr()[0]);
        Koerperteile neuesEnde;
        do {
            turnVerschieben(zeiger);
            if(verlaengern && zeiger.getNext().getNext()==null) {
                neuesEnde=new Koerperteile(zeiger.getNext().getLeftTurn(), zeiger.getNext().getRightTurn(),false,false,true,zeiger.getNext().getDirection(),zeiger.getNext().getPosArr()[1],zeiger.getNext().getPosArr()[0]);
                attach(neuesEnde);
            }
            oldLeft=zeiger.getNext().getLeftTurn();
            oldRight=zeiger.getNext().getRightTurn();
            oldPos=zeiger.getNext().getPosArr();
            oldDirection=zeiger.getNext().getDirection();

            zeiger.getNext().setLeftTurn(oldestLeft);
            zeiger.getNext().setRightTurn(oldestRight);
            zeiger.getNext().setDirection(oldestDirection);
            zeiger.getNext().setPosArr(oldestPos[0], oldestPos[1]);
            
            switch(newDirection) {
            case 0:
                zeiger.setPosArr(((zeiger.getPosArr()[0])-1),zeiger.getPosArr()[1]); oldestVerschiebungY=-1; oldestVerschiebungX=0;
                break;
            case 90:
                zeiger.setPosArr(zeiger.getPosArr()[0],((zeiger.getPosArr()[1])+1)); oldestVerschiebungY=0; oldestVerschiebungX=+1;
                break;
            case 180:
                zeiger.setPosArr(((zeiger.getPosArr()[0])+1),zeiger.getPosArr()[1]); oldestVerschiebungY=+1; oldestVerschiebungX=0;
                break;
            case 270:
                zeiger.setPosArr(zeiger.getPosArr()[0],((zeiger.getPosArr()[1])-1)); oldestVerschiebungY=0; oldestVerschiebungX=-1;
                break;
        }

            oldestLeft=oldLeft;
            oldestRight=oldRight;
            oldestDirection=oldDirection;
            oldestPos=oldPos;
            
            
            
            zeiger=zeiger.getNext();
        } while(zeiger.getNext()!=null);
    }
}
