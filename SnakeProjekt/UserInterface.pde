class UserInterface {
    private int txtSize = 20;
    private int score = 0;

    public void showScore( int xPos, int yPos) {
    fill(140, 200, 242);
    rect(xPos, yPos, 70, 80, 1);
    
    textSize(txtSize);
    fill(0);
    text("Score: " + score, xPos + 5, yPos + 20, 65, 60);
    }

    public void erhoeheScore(int s) { score += s; }

    public void reset(){
    }

}