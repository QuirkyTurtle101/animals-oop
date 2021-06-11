Container main;
Toolbar toolbar;

void setup(){
  size(800,600); 
  
  main = new Container();
  toolbar = new Toolbar(100);
}

void draw(){
  toolbar.display();
}

void mouseClicked(){
  if(mouseY < toolbar.toolbarSize){
    for(Button i : toolbar.buttons){
      i.isPressed = false;
      if(i.x < mouseX && mouseX < i.x+i.sizeX){
        i.isClicked();
      }
    }
  }else{
    println("not toolbar");
  }
}
