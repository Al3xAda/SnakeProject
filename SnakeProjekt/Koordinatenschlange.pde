class Koordinatenschlange {
    private Koordinatenhalter erste;
    private Koordinatenhalter zeiger;
    
    public int getLength() {
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
    public void attach(int[] a) {
        zeiger=erste;
        while(zeiger.getNextElement()!=null) {
            zeiger=zeiger.getNextElement();
        }
        zeiger.setNextElement(new Koordinatenhalter(a));
    }

    public int[] getCoordinates(int j) {
        zeiger=erste;
        for(int i=0; i<j; i++) {
            zeiger=zeiger.getNextElement();
        }
        return zeiger.getArr();
    }
    
}
