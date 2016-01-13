class Player extends Human {
  Player(String name) {
    super(name, width/2, height/2);
  }



  void update(){
    setXY(mouseX, mouseY);
    super.update();
   
  }

}
