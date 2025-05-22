class Datenstruktur {
    private Koerperteile erste;
    private Koerperteile zeiger;
    
    public Koerperteile getHead() {
        if(erste==null) {
            System.out.println("Fehler: Kein Kopf");
        }
        return erste;
    }
    public void initialisiere(){
       attach(new Koerperteile(false, false, true, false, false, 90, 35, 35));
       attach(new Koerperteile(false, false, false, false, true, 90, 40, 35));
    }
    public void attach (Koerperteile a) {
       if(erste==null) {
         erste=a;
       } else {
        zeiger=erste;
        while(zeiger.getNext()!=null) {
            zeiger=zeiger.getNext();
        }
        zeiger.setNext(a);
        zeiger.setIsTail(true);
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
      if(j<getLength()){
        zeiger=erste;
        int i=0;
        while(i<j) {
          zeiger=zeiger.getNext();
          i++;
        }
        return zeiger;
      }
      System.out.println("Fehler bei Datenstruktur - getSnakePart");
      return null;
    }
    
    public void move(int heading, boolean verlaengern) {
        zeiger=erste;
        boolean oldestLeft, oldestRight, oldLeft, oldRight;
        int[] oldestPos, oldPos;
        int oldestDirection, oldDirection;
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
        switch(newDirection) {
            case 0:
                zeiger.setPosArr(((zeiger.getPosArr()[0])--),zeiger.getPosArr()[1]);
                break;
            case 90:
                zeiger.setPosArr(zeiger.getPosArr()[0],((zeiger.getPosArr()[1])++));
                break;
            case 180:
                zeiger.setPosArr(((zeiger.getPosArr()[0])++),zeiger.getPosArr()[1]);
                break;
            case 270:
                zeiger.setPosArr(zeiger.getPosArr()[0],((zeiger.getPosArr()[1])--));
                break;
        }
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
            zeiger.getNext().setPosArr(oldPos[0], oldPos[1]);

            oldestLeft=oldLeft;
            oldestRight=oldRight;
            oldestDirection=oldDirection;
            oldestPos=oldPos;
            zeiger=zeiger.getNext();
        } while(zeiger.getNext()!=null);
    }
}
