class Player extends Human {


  Player(String name) {
    super(name, width/2, height/2);
    stand = loadImage("goseicho1.png");
}

  void update(){
    setXY(mouseX, mouseY);
    super.update();
   
  }

}