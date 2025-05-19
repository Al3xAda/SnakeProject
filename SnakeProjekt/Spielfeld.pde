class Spielfeld{
    
Wand wand = new Wand();
Apfel apfel = new Apfel();
int groeße = 15;

Spielfeld=new spfa[groeße][groeße];




public void Kasten(){
    rect(20, 20);
    fill(0);
    
}

public void zeichneFeld{

    for(int i=0; i<spfa.length; i++){
        for(int i=0; i<spfa.length; i++){
            spfa[i][j].Kasten();
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




}
