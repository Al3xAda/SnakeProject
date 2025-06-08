class Koordinatenschlange extends Reservoir {
  private Datenstruktur rawSnake=getDs();
  private Koordinatenhalter erste;
  private Koordinatenhalter zeiger1;
  private Koordinatenhalter zeiger2;
  //
  private boolean flexibel;
  private int laenge;
  Koordinatenschlange(boolean f) {
    flexibel=f;
  }

  public void attachTileCoord(int[]a) {
    Koordinatenhalter zeiger;
    try {
      if (flexibel) {
        if (erste==null) {
          erste=new Koordinatenhalter(/*null,*/ null, a, 0);
        } else {
          zeiger=erste;
          while (zeiger.getNextElement()!=null) {
            zeiger=zeiger.getNextElement();
          }
          zeiger.setNextElement(new Koordinatenhalter(/*zeiger,*/ null, a, (zeiger.getIndex()+1)));
        }
      }
    }
    catch (NullPointerException e) {
      println("attach");
    }
  }

  public void clearCoord() {
    if (flexibel) {
      erste=null;
    }
  }

  private void update() {
    try {
      laenge=rawSnake.getLength();
      if (!flexibel) {
        erste=null;
        int [] temp1=rawSnake.getSnakePart(0,false).getPosArr();
        int [] temp2=rawSnake.getSnakePart(0,false).getTilePos();
        erste=new Koordinatenhalter(/*null,*/ temp1, temp2, 0);
        Koordinatenhalter zeigerInt=erste;
        for (int i=0; i<(laenge-1); i++) {
          temp1=rawSnake.getSnakePart(i+1,true).getPosArr();
          temp2=rawSnake.getSnakePart(i+1,true).getTilePos();
          zeigerInt.setNextElement((new Koordinatenhalter(/*zeigerInt,*/ temp1, temp2, (zeigerInt.getIndex()+1))));
          //println(zeigerInt.getIndex());
          zeigerInt=zeigerInt.getNextElement();
        }
      }
    }
    catch (NullPointerException e) {
      println("update");
    }
  }


  public int getLength() {
    update();
    return laenge;
  }


  public int[] getPosCoord(int j, boolean effizient) {
    update();
    if (zeiger2==null || !effizient) {
      zeiger2=erste;
    }
    if (j<laenge) {
      /*int minmax;
      if (zeiger2.getIndex()>j) {
        minmax=-1;
      } else {
        minmax=1;
      }*/
      while (zeiger2.getIndex()!=j/*&&zeiger2.getIndex()>0 &&zeiger2.getIndex()<laenge*/) {
        //println("Distanz1: "+(zeiger2.getIndex()-j));
        //println("minmax: "+minmax);
        /*switch(minmax) {
        case 1:*/
          zeiger2=zeiger2.getNextElement();
          /*break;
        case -1:
          zeiger2=zeiger2.getPreviousElement();
          break;
        }*/
        //println("Distanz2: "+abs(zeiger.getIndex()-j));
        if (zeiger2==null) {
          //println("Fehler posCoord");
        }
        //println("aktuelle Stelle: "+zeiger.getIndex());
      }
      //println(abs(zeiger.getIndex()-j));
      try {
        return zeiger2.getArrPos();
      }
      catch (NullPointerException e) {
        //println("Nullpointer in posCoord");
      }
    }

    //System.out.println("Fehler bei Koordniatenschlange - getPosCoord");
    return null;
  }

  public int[] getTileCoord(int j, boolean effizient) {
    update();
    //return GraphToArr(getPosCoord(j));
    //println("länge: "+laenge);
    if (zeiger1==null||!effizient) {
      zeiger1=erste;
      if (j>0) {
        //println(millis()+"+ineffizient-------------------------");
      }
    } else {
      //println(millis()+"+effizient");
    }

    if (j<laenge) {

      /*int minmax;
      if (zeiger1.getIndex()>j) {
        minmax=-1;
      } else {
        minmax=1;
      }*/
      while (zeiger1.getIndex()!=j/*&&zeiger1.getIndex()>0 &&zeiger1.getIndex()<laenge*/) {
        //println("Distanz1: "+(zeiger1.getIndex()-j));
        //println("minmax: "+minmax);
        /*switch(minmax) {
        case 1:*/
          zeiger1=zeiger1.getNextElement();
          /*break;
        case -1:
          zeiger1=zeiger1.getPreviousElement();
          break;
        }*/
        //println("Distanz2: "+abs(zeiger.getIndex()-j));
        if (zeiger1==null) {
          println("Fehler tileCoord");
          //delay(10000000);
        }
        //println("aktuelle Stelle: "+zeiger.getIndex());
      }
      //println(abs(zeiger.getIndex()-j));
      try {
        return zeiger1.getArrTile();
      }
      catch (NullPointerException e) {
        println("Nullpointer in tileCoord");
        //delay(100000);
      }
    }

    System.out.println("Fehler bei Koordniatenschlange - getTileCoord");
    return null;
  }
  

  public void printCoord(boolean pos) {
    for (int i=0; i<getLength(); i++) {
      if (pos) {
        System.out.println("xArr"+(i+1)+": "+getPosCoord(i,false)[1]+"  |  yArr"+(i+1)+": "+getPosCoord(i,false)[0]);
      } else {
        System.out.println("xArr"+(i+1)+": "+getTileCoord(i, false)[1]+"  |  yArr"+(i+1)+": "+getTileCoord(i, false)[0]);
      }
    }
    System.out.println("--------------");
  }
}
