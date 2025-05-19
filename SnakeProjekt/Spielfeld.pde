class Spielfeld{
    
Wand wand = new Wand();
Apfel apfel = new Apfel();
int groeße = 15;

Spielfeld=new spfa[groeße][groeße];




public void Kasten(int x, int y){
    rect(x , y,20, 20);
    fill(0);
    stroke(255, 45, 0, 3);
    
}

public void zeichneFeld{

    for(int i=0; i<spfa.length; i++){
        for(int i=0; j<spfa.length; j++){
            spfa[i][j].Kasten(i,j);
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
