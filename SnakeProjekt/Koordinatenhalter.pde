class Koordinatenhalter {
  private Koordinatenhalter next;
  private Koordinatenhalter prev;
  private int []arrPos; //(nFelder*unterteilung)-Felde
  private int []arrTile; //nFelderFeld
  int index;
  public Koordinatenhalter(int[]a, int[]b, int i) {
    arrPos=a;
    arrTile=b;
    index=i;
  }
  public Koordinatenhalter getPreviousElement() {
    if (prev==null) {
      println(index+" hat kein previous");
    }
    return prev;
  }
  public void setNextElement(Koordinatenhalter kh) {
    next=kh;
  }
  public int getIndex() {
    return index;
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
    try {
      return arrTile;
    } catch(NullPointerException e) {
      println("Nullpointer in getArrTile in Koordinatenhalter");
      return null;
    }
  }
}
