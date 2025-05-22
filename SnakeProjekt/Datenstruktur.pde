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
        
    }
}
