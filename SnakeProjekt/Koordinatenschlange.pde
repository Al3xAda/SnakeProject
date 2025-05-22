class Koordinatenschlange {
  private Datenstruktur rawSnake=getDs();
  private Koordinatenhalter erste;
  private Koordinatenhalter zeiger;

  private void update() {
    try {
      erste=null;
      int [] temp=rawSnake.getSnakePart(0).getPosArr();
      erste=new Koordinatenhalter(temp);
      zeiger=erste;
      for (int i=0; i<(rawSnake.getLength()-1); i++) {
        temp=rawSnake.getSnakePart(i+1).getPosArr();
        zeiger.setNextElement(new Koordinatenhalter(temp));
        zeiger=zeiger.getNextElement();
      }
    }
    catch (NullPointerException e) {
      println("Fehler1");
    }
  }

  public int getLength() {
    update();
    try {
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
    catch (NullPointerException e) {
      println("Fehler2");
      return 0;
    }
  }


  public int[] getCoordinates(int j) {
    update();
    
    /*println("laenge: "+getLength());
    print("zeiger.next==null: ");
    println(zeiger.getNextElement()==null);*/
    /*println("j: "+ j);
     print("j<laenge: ");
     println(j<getLength());*/
    try {
      if (j<getLength()) {
        zeiger=erste;
        /*print("i<j: ");
         println(0<j);*/
        //try {
        for (int i=0; i<j; i++) {
          //print("zeiger.next==null: ");
          //println(zeiger.getNextElement()==null);
          zeiger=zeiger.getNextElement();
          //println("i: "+ i);
        }
        /*}
         catch (NullPointerException e) {
         println("Fehler4");
         }*/
        //print("zeiger.next==null: ");
        //println(zeiger.getNextElement()==null);
        try {
          return zeiger.getArr();
        }
        catch(NullPointerException e) {
          println("Fehler4");
        }
      }
      System.out.println("Fehler bei Koordniatenschlange - getCoordinates");
    }
    catch (NullPointerException e) {
      println("Fehler3");
    }
    return null;
  }

  public void printCoord() {
    for (int i=0; i<getLength(); i++) {
      System.out.println("X"+(i+1)+": "+getCoordinates(i)[1]);
      System.out.println("Y"+(i+1)+": "+getCoordinates(i)[0]);
      //println("i: "+i);
      System.out.println("--------------");
    }
  }
}
