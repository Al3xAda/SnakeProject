class Koerperteile extends Reservoir {
  private boolean isHead;
  private boolean isTail;
  private int direction;
  private int vorherDirection;
  private int posArr[]= new int[2];
  private Koerperteile next;
  private Koerperteile vorher;
  private int index;
  public Koerperteile(boolean iH, boolean iT, int d, int x, int y, Koerperteile v, int i) {
    isHead = iH;
    isTail = iT;
    direction=d;
    posArr[1] = x;
    posArr[0] = y;
    vorher=v;
    index=i;
  }
  public int getIndex() {
    return index;
  }
  public boolean getIsHead() {
    return isHead;
  }
  public boolean getIsTail() {
    return isTail;
  }
  public int[] getPosArr() {
    return posArr;
  }
  public int[] getTilePos() { //Koordinaten im nFelder*nFelder-Feld
    float xTile=((posArr[1]+((unterteilung/2)+0.5))/unterteilung); //*1.5, um aus oberer linker Ecke
    float yTile=((posArr[0]+((unterteilung/2)+0.5))/unterteilung); // Koordinate des Mittelpunktes zu machen
    int []t={(int)yTile, (int)xTile};
    return t;
  }
  public Koerperteile getVorher() {
    return vorher;
  }
  public Koerperteile getNext () {
    return next;
  }
  public void setIsHead(boolean h) {
    isHead=h;
  }
  public void setIsTail(boolean t) {
    isTail=t;
  }
  public void setPosArr (int y, int x) {
    posArr[1]=x;
    posArr[0]=y;
  }
  public void setNext (Koerperteile n) {
    next=n;
  }
  public void setDirection(int d) {
    direction=d;
  }
  public int getDirection() {
    return direction;
  }
  public void setVorherDirection(int vd) {
    vorherDirection=vd;
  }
  public int getVorherDirection() {
    return vorherDirection;
  }
}
