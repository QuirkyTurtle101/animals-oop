//this is for our Container class - it contains every object that exists in the game world. we also find the Toolbar container object, obviously for our toolbar, as well as related classes.

class Container{
  ArrayList<Entity> entities;
  
  Container(){
    entities = new ArrayList<Entity>();
  }
  
  //this function handles collision. do not touch it unless it is thoroughly broken.
  void collision(){
    for(Entity i : entities){
      for(Entity j : entities){
        if(i instanceof Terrain && j instanceof Animal){
          println(dist(i.x, i.y, j.x, j.y), i.size);
          if(dist(i.x, i.y, j.x, j.y) < i.size){
            i.collisionHandler(j);
            println("collision!");
          }
        }
      }
    }
  }
}

class Toolbar{
  int toolbarSize;
  ArrayList<Button> buttons = new ArrayList<Button>();
  
  Toolbar(int _toolbarSize){
    toolbarSize = _toolbarSize; //the word toolbar is losing all meaning already - maybe i shouldn't be working on this at 10:15 while tired and like mildly dissociating
    
    //borrowed this data entry code from the card game project we did a while back - knew that shitshow would come in handy sooner or later
    String[] assetData;
    assetData = loadStrings(dataPath("") + "\\classes.txt");
    
    for(int i = 0; i < assetData.length; i++){
      println(assetData[i]);
      
      buttons.add(new Button(10+i*100, 10, 80, 80, assetData[i]));
    }
  }
  
  void display(){
    fill(0);
    rectMode(CORNER);
    rect(0, 0, 800, toolbarSize);
    for(Button i : buttons){
      i.display();
    }
  }
}

class Button extends Entity{
  int sizeX;
  int sizeY;
  String title;
  boolean isPressed = false;
  
  Button(int _x, int _y, int _sizeX, int _sizeY, String _title){
    super(_x, _y);
    sizeX = _sizeX;
    sizeY = _sizeY;
    title = _title;
  }
  
  void display(){
    if(isPressed){
      fill(255, 0, 0);
    }else{
      fill(255);
    }
    rectMode(CORNER);
    rect(x, y, sizeX, sizeY);
    fill(0);
    text(title, x+10, y+sizeY/2+5);
  }
  
  void isClicked(){
    if(isPressed){
      isPressed = false;
    } else {
      isPressed = true;
    }
  }
}
