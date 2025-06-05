class Koordinatenschlange {
  private Datenstruktur rawSnake=getDs();
  private Koordinatenhalter erste;
  private Koordinatenhalter zeiger;
  private boolean flexibel;

  Koordinatenschlange(boolean f) {
    flexibel=f;
  }

  public void attachTileCoord(int[]a) {
    if (flexibel) {
      zeiger=erste;
      if (erste==null) {
        erste=new Koordinatenhalter(null, a);
      } else {
        while (zeiger.getNextElement()!=null) {
          zeiger=zeiger.getNextElement();
        }
        zeiger.setNextElement(new Koordinatenhalter(null, a));
      }
    }
  }

  public void clearCoord() {
    if (flexibel) {
      erste=null;
    }
  }

  private void update() {
    if (!flexibel) {
      erste=null;
      int [] temp1=rawSnake.getSnakePart(0).getPosArr();
      int [] temp2=rawSnake.getSnakePart(0).getTilePos();
      erste=new Koordinatenhalter(temp1, temp2);
      zeiger=erste;
      for (int i=0; i<(rawSnake.getLength()-1); i++) {
        temp1=rawSnake.getSnakePart(i+1).getPosArr();
        temp2=rawSnake.getSnakePart(i+1).getTilePos();
        zeiger.setNextElement(new Koordinatenhalter(temp1, temp2));
        zeiger=zeiger.getNextElement();
      }
    }
  }

  public int getLength() {
    update();
    int i=0;
    if (erste==null) {
      return i;
    } else {
      zeiger=erste;
      while (zeiger.getNextElement()!=null) {
        i++;
        zeiger=zeiger.getNextElement();
      }
      i++;
      return i;
    }
  }

  public int getDirection(int j) {
    update();
    if (j<getLength()) {
      return rawSnake.getSnakePart(j).getDirection();
    }
    System.out.println("Fehler bei Koordniatenschlange - getPosCoord");
    return -44;
  }

  public int[] getPosCoord(int j) {
    update();
    if (j<getLength()) {
      zeiger=erste;
      for (int i=0; i<j; i++) {
        zeiger=zeiger.getNextElement();
      }
      return zeiger.getArrPos();
    }
    System.out.println("Fehler bei Koordniatenschlange - getPosCoord");
    return null;
  }
  public int[] getTileCoord(int j) {
    update();
    if (j<getLength()) {
      zeiger=erste;
      for (int i=0; i<j; i++) {
        zeiger=zeiger.getNextElement();
      }
      return zeiger.getArrTile();
    }
    System.out.println("Fehler bei Koordniatenschlange - getTileCoord");
    return null;
  }
  public void printCoord(boolean pos) {
    for (int i=0; i<getLength(); i++) {
      if (pos) {
        System.out.println("xArr"+(i+1)+": "+getPosCoord(i)[1]+"  |  yArr"+(i+1)+": "+getPosCoord(i)[0]);
      } else {
        System.out.println("xArr"+(i+1)+": "+getTileCoord(i)[1]+"  |  yArr"+(i+1)+": "+getTileCoord(i)[0]);
      }
    }
    System.out.println("--------------");
  }
}
