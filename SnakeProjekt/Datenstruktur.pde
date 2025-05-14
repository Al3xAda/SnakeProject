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
        while(zeiger.getNext()!=null) {
            zeiger=zeiger.getNext();
        }
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
        boolean oldLeft;
        boolean oldRight;
        int[] oldPos;
        int oldDirection;
        do {
            oldLeft=zeiger.getLeftTurn();
            oldRight=zeiger.getRightTurn();
            oldPos=zeiger.getPosArr();
            oldDirection=zeiger.getDirection();
            if(zeiger.getIsHead) {         //Kopf anpassen
                int newDirection;
                newDirection=oldDirection+heading;
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

            }
        } while(zeiger.naechste!=null)
    }
}