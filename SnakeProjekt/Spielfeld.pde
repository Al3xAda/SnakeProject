class Spielfeld extends Reservoir {


  Wand wand = new Wand("wand");
  Koordinatenschlange coordSchl = getCoordSchl();
  Koordinatenschlange freeTile=new Koordinatenschlange(true);
  private int ax;
  private int ay;

  Spielfeld() {
    for (int i = 0; i < spfa.length; i++) {
      for (int j = 0; j < spfa[i].length; j++) {
        spfa[i][j] = new Wand("leer");
      }
    }
  }

  public void zeichneFeld() {
    for (int i = 0; i < spfa.length; i++) {
      for (int j = 0; j < spfa[i].length; j++) {
        int xabstand = 50 * i + 10;
        int yabstand = 50 * j + 10;
        spfa[i][j].zeichne(xabstand, yabstand);
      }
    }
  }

  public void setzeWand() {
    for (int i = 0; i < spfa.length; i++) {
      spfa[0][i] = new Wand("wand");
      spfa[14][i] = new Wand("wand");
      spfa[i][0] = new Wand("wand");
      spfa[i][14] = new Wand("wand");
    }
  }

  public boolean istApfel() {
    boolean istApfel = true;
    for (int i = 0; i<spfa.length; i++) {
      for ( int j=0; j<spfa.length; j++) {
        if (spfa[i][j] != new Wand("apfel")) {
          istApfel = false;
        }
      }
    }
    return istApfel;
  }
  public void setzeApfel() {
    for (int i = 0; i < spfa.length; i++) {
      for (int j = 0; j < spfa[i].length; j++) {
        if (spfa[i][j].typ.equals("apfel")) {
          return;
        }
      }
    }
    while (true) {
      int x = (int)(Math.random() * spfa.length);
      int y = (int)(Math.random() * spfa[0].length);
      ax = x;
      ay = y;

      if (!spfa[x][y].typ.equals("leer")) {
        continue;
      }
      boolean aufSchlange = false;
      for (int i = 0; i < coordSchl.getLength(); i++) {
        int[] pos = coordSchl.getTileCoord(i);
        if ((pos[0] == y && pos[1] == x)) {
          aufSchlange = true;
          break;
        }
      }
      if (!aufSchlange) {
        spfa[x][y] = new Wand("apfel");
        break;
      }
    }
  }

  public boolean apfelinSchlange() {
    int x = ax;
    int y = ay;
    boolean aufSchlange = false;
    int[] pos = coordSchl.getTileCoord(0);
    if (pos[0] == y && pos[1] == x && coordSchl.getPosCoord(0)[0]%unterteilung==0&& coordSchl.getPosCoord(0)[1]%unterteilung==0) {
      aufSchlange = true;
    }
    return aufSchlange;
  }

  public void apfelEssen() {
    if (apfelinSchlange()==true) {
      spfa[ax][ay] = new Wand("leer");
    }
  }

  /*public boolean CrashMitWand(){
   boolean crashed=false;
   for(int i=0; i<spfa.length; i++){
   if(spfa[][])
   }
   
   }
   
   */
}
