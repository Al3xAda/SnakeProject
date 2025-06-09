class Reservoir {
  public final int seiteGraphisch=50;
  public final int unterteilung=25; //ein graphisches Feld wird in der Logik in 25 Unterfelder unterteilt
  public final int seiteArr=(seiteGraphisch/unterteilung);
  public final int nFelder=15;
  public final int verschiebung=10;

  public int [] arrToGraph(int [] a ) {
    int y=(a[0]*seiteArr)+verschiebung;
    int x=(a[1]*seiteArr)+verschiebung;
    int[]rueckArr={y, x};
    return rueckArr;
  }
}
