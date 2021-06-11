Container main;
Toolbar toolbar;

void setup(){
  size(800,600); 
  
  main = new Container();
  toolbar = new Toolbar(100);
}

void draw(){
  clear();
  background(255);
  toolbar.display();
  if(main.entities.size() != 0){
    for(Entity i : main.entities){
      i.display();
      i.act();
    }
    main.collision();
  }
  
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
    int temp = 0;
    for(Button i : toolbar.buttons){
      if(i.isPressed == true){
        break;
      }
      temp++;
    }
    switch(temp){
      case 0:
        main.entities.add(new Dog(mouseX, mouseY));
        break;
      case 1:
        main.entities.add(new Human(mouseX, mouseY));
        break;
      case 2:
        main.entities.add(new Tree(mouseX, mouseY));
        break;
      case 3:
        main.entities.add(new Flower(mouseX, mouseY));
        break;
      case 4:
        main.entities.add(new Swamp(mouseX, mouseY));
        break;
      case 5:
        main.entities.add(new Ice(mouseX, mouseY));
        break;
      default:
        break;
    }
  }
}
