class Koordinatenhalter {
    private Koordinatenhalter next;
    private int []arr;
    public Koordinatenhalter(int[]a) {
        arr=a;
    }
    public int [] getElement() {
        return arr;
    }
    public void setNextElement(Koordinatenhalter kh) {
        next=kh;
    }
    public Koordinatenhalter getNextElement() {
        return next;
    }
    public void setArr(int[]a) {
        arr=a;
    }
    public int []getArr() {
        return arr;
    }
}