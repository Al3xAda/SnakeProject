class Spielfeld{
   
Wand wand = new Wand();
Apfel apfel = new Apfel();

Spielfeld[][] spfa =new Spielfeld[15][15];


Spielfeld() {
    for(int i=0; i<spfa.length; i++){
        for (int j=0; j<spf[i].length; j++){
            spf[i][j]= new Wand();
            }
        }
    }
}

public void zeichneFeld(){

    for(int i=0; i<spfa.length; i++){
        for(int i=0; j<spfa[i].length; j++){
          int xabstand= 20*i +5;
          int yabstand= 20*j +5;
            spfa[i][j].zeichne(xabstand,yabstand);
        }

    }

}

public void setzeWand(){
    	
        for(int i=0; i<spfa.length; i++){
            spfa[0][i]= new Wand();
            spfa[14][i]= new Wand();
            spfa[i][0]= new Wand();
            spfa[i][14]= new Wand();
        }
}

public void setzeApfel(){
    

}




}
