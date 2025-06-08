class Koordinatenschlange extends Reservoir {
  private Datenstruktur rawSnake=getDs();
  private Koordinatenhalter erste;
  private Koordinatenhalter zeiger1;
  private Koordinatenhalter zeiger2;
  
  private void update() {
    try {
        erste=null;
        int [] temp1=rawSnake.getSnakePart(0, false).getPosArr();
        int [] temp2=rawSnake.getSnakePart(0, false).getTilePos();
        erste=new Koordinatenhalter(/*null,*/ temp1, temp2, 0);
        Koordinatenhalter zeigerInt=erste;
        for (int i=0; i<((rawSnake.getLength())-1); i++) {
          temp1=rawSnake.getSnakePart(i+1, true).getPosArr();
          temp2=rawSnake.getSnakePart(i+1, true).getTilePos();
          zeigerInt.setNextElement((new Koordinatenhalter(temp1, temp2, ((zeigerInt.getIndex())+1))));
          zeigerInt=zeigerInt.getNextElement();
      }
    }
    catch (NullPointerException e) {
      println("update");
    }
  }


  public int getLength() {
    return (rawSnake.getLength());
  }


  public int[] getPosCoord(int j, boolean effizient) {
    update();
    if (zeiger2==null || !effizient) {
      zeiger2=erste.getNextElement();
      if (j==0) {
        return erste.getArrTile();
      }
    }
    if (j<getLength()) {
      while (zeiger2.getIndex()!=j&&zeiger2.getIndex()>0 &&zeiger2.getIndex()<getLength()) {
        zeiger2=zeiger2.getNextElement();
        if (zeiger2==null) {
        }
      }
      try {
        return zeiger2.getArrPos();
      }
      catch (NullPointerException e) {
      }
    }
    return null;
  }

  public int[] getTileCoord(int j, boolean effizient) {
    update();
    if (zeiger1==null||!effizient) {
      zeiger1=erste.getNextElement();
      if (j==0) {
        return erste.getArrTile();
      }
    }
    if (j<getLength()) {
      while (zeiger1.getIndex()!=j&&zeiger1.getIndex()>0 &&zeiger1.getIndex()<getLength()) {
        zeiger1=zeiger1.getNextElement();
        if (zeiger1==null) {
          println("Fehler tileCoord");
        }
      }
      try {
        return zeiger1.getArrTile();
      }
      catch (NullPointerException e) {
        println("Nullpointer in tileCoord");
      }
    }

    System.out.println("Fehler bei Koordniatenschlange - getTileCoord");
    return null;
  }


  public void printCoord(boolean pos) {
    for (int i=0; i<getLength(); i++) {
      if (pos) {
        System.out.println("xArr"+(i+1)+": "+getPosCoord(i, i!=0)[1]+"  |  yArr"+(i+1)+": "+getPosCoord(i, false)[0]);
      } else {
        System.out.println("xArr"+(i+1)+": "+getTileCoord(i, i!=0)[1]+"  |  yArr"+(i+1)+": "+getTileCoord(i, false)[0]);
      }
    }
    System.out.println("--------------");
  }
}
