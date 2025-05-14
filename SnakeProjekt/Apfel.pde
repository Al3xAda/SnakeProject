class Apfel{
    private int x;
    private int y;
    private int width = 20;
    private int height = 20;
    PImage img;
    bollean eaten = false;
    Apfel(int x, int y, int width, int height, PImage img){
        this.img = img;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    } 
}