class Koordinatenhalter {
    private Koordinatenhalter next;
    private int []arrPos; //(nFelder*unterteilung)-Felde
    private int []arrTile; //nFelderFeld
    public Koordinatenhalter(int[]a, int[]b) {
        arrPos=a;
        arrTile=b;
    }
    public void setNextElement(Koordinatenhalter kh) {
        next=kh;
    }
    public Koordinatenhalter getNextElement() {
        return next;
    }
    public void setArrPos(int[]a) {
        arrPos=a;
    }
    public int []getArrPos() {
        return arrPos;
    }
    public void setArrTile(int[]a) {
        arrTile=a;
    }
    public int []getArrTile() {
        return arrTile;
    }
}
