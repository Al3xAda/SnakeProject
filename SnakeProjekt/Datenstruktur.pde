class Datenstruktur {
    private Koerperteile erste=new Koerperteile(false, false,true, false, false, 7,7);
    private Koerperteile zeiger;
    public Koerperteile getHead() {
        if(erste==null) {
            System.out.println("Fehler: Kein Kopf")
        }
        return erste;
    }
    public void attach (Koerperteile a) {
        zeiger=erste;
        int copyDirection;
        while(zeiger.getNext()!=null) {
            if(zeiger.getNext().getNext()==null){
                copydirection=zeiger.getNext().getDirection();
            }
            zeiger=zeiger.getNext();
        }
        zeiger.setIsTail(false);
        int []copyCoordinates=new int[2];
        zeiger.setNext(a);
    }
    private void turnVerschieben(Koerperteile k){
        if(k.getLeftTurn){
            k.setLeftTurn(false);
            k.naechste.setLeftTurn(true);
        } else if(k.getRightTurn){
            k.setRightTurn(false);
            k.naechste.setRightTurn(true);
        }
    }
    public LinkedList<Integer> createCoordinates() {

    }
    public void move(int heading, boolean amEssen) {
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
        zeiger.setDirection(newDirection),
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
        do {
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