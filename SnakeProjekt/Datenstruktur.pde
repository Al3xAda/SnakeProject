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
    public void move(int heading, boolean amEssen) {
        int x;
        int y;
        int vorzeichen;    
        zeiger=erste;
        while(zeiger.getNext()!=null) {
            
            if(heading==0 || heading==180){
                /*boolean links=zeiger.getLeftTurn();
            boolean rechts=zeiger.getRightTurn();
            int richtung=zeiger.getDirection();*/
            vorzeichen=(179-heading)*(-1); //bei heading=0 negativ, =180 positv
            x=(zeiger.getPosArr()[0])+(1*(vorzeichen/abs(vorzeichen)));
            y=zeiger.getPosArr()[1];
            }  
            turnVerschieben(zeiger);    
        }
    }
}