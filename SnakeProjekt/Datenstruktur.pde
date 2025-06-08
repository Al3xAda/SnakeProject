class Datenstruktur extends Reservoir {
  private Koerperteile erste;
  private Koerperteile zeiger;
  Koerperteile zeigerGet;
  private int laenge;
  public Datenstruktur() {
    laenge=0;
  }
  public Koerperteile getHead() {
    if (erste==null) {
      System.out.println("Fehler: Kein Kopf");
    }
    return erste;
  }
  public void initialisiere() {
    attach(new Koerperteile(true, false, 90, (nFelder/2)*unterteilung, (nFelder/2)*unterteilung, null, 0)); //möglichst mittige Positionierung
    int n=1;
    Koerperteile schieber=erste;
    for (int i=0; i<0; i++) {
      attach(new Koerperteile( false, false, 90, ((nFelder/2)*unterteilung)-(unterteilung*n), (nFelder/2)*unterteilung, schieber, (schieber.getIndex()+1)));
      schieber=schieber.getNext();
      n++;
    }
    //möglichst mittige Positionierung
    laenge=n+1;
    attach(new Koerperteile(false, true, 90, ((nFelder/2)*unterteilung)-(unterteilung*n), (nFelder/2)*unterteilung, schieber,(schieber.getIndex()+1)));

  }
  public void attach (Koerperteile a) {
    if (erste==null) {
      erste=a;
    } else {
      Koerperteile zeigerInt=erste;
      while (zeigerInt.getNext()!=null) {
        zeigerInt=zeigerInt.getNext();
      }
      zeigerInt.setNext(a);
      zeigerInt.setIsTail(false);
      zeigerInt.getNext().setIsTail(true);
    }
  }

  public int getLength() {
    return laenge;
  }

  public Koerperteile getSnakePart(int j, boolean effizient) {
    if(zeigerGet==null || !effizient) {
      zeigerGet=erste;
    }
    if (j<getLength()) {
      while (zeigerGet.getIndex()!=j) {
        zeigerGet=zeigerGet.getNext();
      }
      return zeigerGet;
    }
    System.out.println("Fehler bei Datenstruktur - getSnakePart");
    return null;
  }
  private boolean bedingung() {
    boolean bed1=(zeiger.getVorher().getPosArr()[0]==(zeiger.getPosArr()[0]+1) || zeiger.getVorher().getPosArr()[0]==(zeiger.getPosArr()[0]-1)); //Situation 180 Grad
    boolean bed2=(zeiger.getVorher().getPosArr()[1]==(zeiger.getPosArr()[1]+1) || zeiger.getVorher().getPosArr()[1]==(zeiger.getPosArr()[1]-1)); //Situation 180 Grad
    boolean bed3=(zeiger.getVorher().getPosArr()[0]==zeiger.getPosArr()[0] || zeiger.getVorher().getPosArr()[1]==zeiger.getPosArr()[1]); //normale Sitution: warten bsi nachfolgendes Objekt aufrückt
    boolean bed4=abs(zeiger.getVorher().getDirection()-zeiger.getDirection())==0 || abs(zeiger.getVorher().getDirection()-zeiger.getDirection())==180;
    return (bed3||((bed1||bed2)&&bed4));
  }
  public void move(int heading, boolean verlaengern) {
    zeiger=erste;
    int adjustX=-(unterteilung);
    int adjustY=0;
    while (zeiger!=null) {
      if ((zeiger.getPosArr()[0])%unterteilung==0 && (zeiger.getPosArr()[1])%unterteilung==0) { //heading nur aufaddieren, wenn Graphikfeld ueberquert
        /*if (zeiger.getIsTail()) {
          println("Bedingung: "+ bedingung());
          println("-----------------");
        }*/
        if (zeiger.getIsHead()) {
          zeiger.setVorherDirection(zeiger.getDirection());
          int newDirection=zeiger.getDirection()+heading;
          if (newDirection<0) { //im Intervall [0;270] verbleiben
            newDirection=270;
          } else if (newDirection>270) {
            newDirection=0;
          }
          zeiger.setDirection(newDirection);
        } else {
          switch(zeiger.getDirection()) {//sozusagen vorherDirection, weil direction noch nicht angepasst
          case 0:
            adjustX=0;
            adjustY=(unterteilung);
            break;
          case 90:
            adjustX=-(unterteilung);
            adjustY=0;
            break;
          case 180:
            adjustX=0;
            adjustY=-(unterteilung);
            break;
          case 270:
            adjustX=(unterteilung);
            adjustY=0;
            break;
          }
        }
      }
      if (!zeiger.getIsHead() && bedingung()) {
        zeiger.setVorherDirection(zeiger.getDirection());
        zeiger.setDirection(zeiger.getVorher().getVorherDirection());
      }
      if (zeiger.getNext()==null && verlaengern) {
        Koerperteile schluss=new Koerperteile( false, true, zeiger.getDirection(), (zeiger.getPosArr()[1]+adjustX), (zeiger.getPosArr()[0]+adjustY), zeiger, (zeiger.getIndex()+1));
        attach(schluss);
        laenge++;
        verlaengern=false; //erneuten Aufruf in der naechsten Iteration vermeiden
      }

      switch(zeiger.getDirection()) {
      case 0:
        zeiger.setPosArr(((zeiger.getPosArr()[0])-1), zeiger.getPosArr()[1]);
        break;
      case 90:
        zeiger.setPosArr(zeiger.getPosArr()[0], ((zeiger.getPosArr()[1])+1));
        break;
      case 180:
        zeiger.setPosArr(((zeiger.getPosArr()[0])+1), zeiger.getPosArr()[1]);
        break;
      case 270:
        zeiger.setPosArr(zeiger.getPosArr()[0], ((zeiger.getPosArr()[1])-1));
        break;
      }
      zeiger=zeiger.getNext();
    }
  }
}
