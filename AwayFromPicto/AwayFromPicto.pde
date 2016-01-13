Player player;
Enemy[] enemy = new Enemy[5];
int step = 0;

void setup() {
  size(500, 500); // 画面のサイズ．今回は縦500，横500に設定
  background(255); // 背景の色．今回は白を指定

  for (int i = 0; i < enemy.length; i++) {
    enemy[i] = new Enemy("Boy", (int)random(500), (int)random(500));
  }
  player = new Player("Taro");
}

void draw() {
  background(255);
  player.update();
  for (int i = 0; i < enemy.length; i++) {
    enemy[i].update();
  }
  for (int i = 0; i < enemy.length; i++) { // 衝突判定
    if (abs(player.getX() - enemy[i].getX()) < (player.getWidth() + enemy[i].getWidth())/2 &&
        abs(player.getY() - enemy[i].getY()) < (player.getHeight() + enemy[i].getHeight())/2){
         noLoop();         
    }
  }
  
  fill(0);
  step++;
  text("Timer:" + step,0,15);   
}

void mouseMoved() {
  
}
