class Koerperteile {
    private boolean leftTurn;
    private boolean rightTurn;
    private boolean isHead;
    private boolean hasEaten;
    private boolean isTail;
    private int direction;
    private int posArr[]= new int[2];
    private Koerperteile next;
    public Koerperteile(boolean lT, boolean rT, boolean iH, boolean hE, boolean iT, int d, int x, int y) {
        leftTurn = lT;
        rightTurn = rT;
        isHead = iH;
        hasEaten = hE;
        isTail = iT;
        direction=d;
        posArr[1] = x;
        posArr[0] = y;
    }
    /*public Koerperteile(boolean lT, boolean rT,  boolean hE,  int d, int x, int y) {
        leftTurn = lT;
        rightTurn = rT;
        hasEaten = hE;
        direction=d;
        posArr[0] = x;
        posArr[1] = y;
    }*/
    public boolean getLeftTurn() {
        return leftTurn;
    }
    public boolean getRightTurn() {
        return rightTurn;
    }
    public boolean getIsHead() {
        return isHead;
    }
    public boolean getHasEaten() {
        return hasEaten;
    }
    public boolean getIsTail() {
        return isTail;
    }
    public int[] getPosArr() {
        return posArr;
    }
    public Koerperteile getNext () {
        return next;
    }
    public void setLeftTurn(boolean l) {
        leftTurn=l;
    }
    public void setRightTurn(boolean r) {
        rightTurn=r;
    }
    public void setIsHead(boolean h){
        isHead=h;
    }
    public void setHasEaten(boolean e) {
        hasEaten=e;
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
    public int getDirection(){
        return direction;
    }
}
