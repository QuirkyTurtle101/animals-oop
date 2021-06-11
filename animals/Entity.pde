//this is for the Entity class - it can be mostly ignored, as the Entity class only exists to be extended by objects that need to exist in the screen space

class Entity{
  int x;
  int y;
  int size; //this variable isn't used by all entities, but if it's not here, collision detection can't do its thing
  
  Entity(int _x, int _y){
    x = _x;
    y = _y;
  }
  
  void display(){
    rect(x, y, 1, 1);
  }
  
  void act(){
    
  }
}
