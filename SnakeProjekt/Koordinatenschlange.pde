class Koordinatenschlange extends Schlange{
    private Datenstruktur rawSnake=ds;
    private Koordinatenhalter erste;
    private Koordinatenhalter zeiger;
    
    private void update() {  
        erste=null;
        int [] temp=rawSnake.getSnakePart(0).getPosArr();
        erste=new Koordinatenhalter(temp);
        zeiger=erste;
        for(int i=0; i<(rawSnake.getLength()-1); i++) {
          temp=rawSnake.getSnakePart(i+1).getPosArr();
          zeiger.setNextElement(new Koordinatenhalter(temp));
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
        if(j<getLength()){
          for(int i=0;i<j;i++) {
            zeiger=zeiger.getNextElement();
          }
          return zeiger.getArr();
        }
        System.out.println("Fehler bei Koordniatenschlange - getCoordinates");
        return null;
    }
    
    public void printCoord() {
      for(int i=0; i<getLength(); i++) {
        System.out.println(i);
        System.out.println(getCoordinates(i));
        System.out.println("--------------");
      }
    }
}
