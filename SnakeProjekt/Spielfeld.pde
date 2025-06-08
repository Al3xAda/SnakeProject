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
    long anfang=millis();
    freeTile.clearCoord();
    for (int x = 0; x < spfa.length; x++) {
      for (int y = 0; y < spfa[x].length; y++) {
        if (spfa[x][y].typ.equals("apfel")) {
          return;
        }
        if (spfa[x][y].typ.equals("leer")) {
          boolean aufSchlange = false;
          for (int i = 0; i < coordSchl.getLength(); i++) {
            int[] pos = coordSchl.getTileCoord(i,i!=0);
            if (pos[0] == x && pos[1] == y) {
              aufSchlange = true;
              break;
            }
          }
          if (!aufSchlange) {
            int[]a={x, y};
            freeTile.attachTileCoord(a);
          }
        }
      }
    }
    if (freeTile.getLength() > 0) {
      int randI=(int)(Math.random()*freeTile.getLength());
      int[] zufall = freeTile.getTileCoord(randI,false);
      int x = zufall[0];
      int y = zufall[1];
      ax = x;
      ay = y;
      spfa[x][y] = new Wand("apfel");
    }
    long ende=millis();
   // println("Bearbeitung: "+(ende-anfang));
  }


  public boolean apfelinSchlange() {
    int x = ax;
    int y = ay;
    boolean aufSchlange = false;
    int[] pos = coordSchl.getTileCoord(0,false);
    if (pos[0] == y && pos[1] == x && coordSchl.getPosCoord(0,false)[0]%unterteilung==0&& coordSchl.getPosCoord(0,false)[1]%unterteilung==0) {
      aufSchlange = true;
    }
    return aufSchlange;
  }

  public boolean schlangeInSchlange() {
    int[] kopf = coordSchl.getTileCoord(0,false);
    int kopfX = kopf[0];
    int kopfY = kopf[1];
    int[] pos = coordSchl.getPosCoord(0,false);
    if (pos[0] % unterteilung != 0 || pos[1] % unterteilung != 0) {
      return false;
    }
    for (int i = 1; i < coordSchl.getLength(); i++) {
      int[] segment = coordSchl.getTileCoord(i, true);
      if (segment[0] == kopfX && segment[1] == kopfY) {
        return true;
      }
    }
    return false;
  }

  public boolean schlangeInWand() {
    int[] kopf = coordSchl.getTileCoord(0,false);
    int x = kopf[0];
    int y = kopf[1];
    int[] pos = coordSchl.getPosCoord(0,false);
    if (pos[0] % unterteilung != 0 || pos[1] % unterteilung != 0) {
      return false;
    }
    if (x < 0 || x >= spfa.length || y < 0 || y >= spfa[0].length) {
      return true;
    }
    if (spfa[x][y].typ.equals("wand")) {
      return true;
    }
    return false;
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
