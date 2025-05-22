class Koordinatenschlange {
    Datenstruktur rawSnake;
    private Koordinatenhalter erste;
    private Koordinatenhalter zeiger;
    
    private void update() {
        erste=null;
        zeiger=erste;
        for(int i=0; i<(rawSnake.getLength()-1); i++) {
          int [] nextTemp=rawSnake.getSnakePart(i+1).getPosArr();
          if(erste==null) { //bei i gleich 0
            int [] temp=rawSnake.getSnakePart(i).getPosArr();
            erste=new Koordinatenhalter(temp);
          } 
          zeiger.setNextElement(new Koordinatenhalter(nextTemp));
          zeiger=zeiger.getNextElement();
      }
    }
    
    public int getLength() {
       update();
       int i=0;
       if(erste==null) {
        return i;
       } else {
        zeiger=erste;
        while(zeiger.getNextElement()!=null) {
            i++;
        }
        i++;
        return i;   
       }
    }
    

    public int[] getCoordinates(int j) {
        update();
        zeiger=erste;
        if(j<this.getLength()){
          for(int i=0;i<j;i++) {
            zeiger=zeiger.getNextElement();
          }
          return zeiger.getArr();
        }
        System.out.println("Fehler bei Koordniatenschlange - getCoordinates");
        return null;
    }
    
}
