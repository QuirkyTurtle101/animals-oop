//this is for the Entity class - it can be mostly ignored, as the Entity class only exists to be extended by objects that need to exist in the screen space

class Entity{
  float x;
  float y;
  int size; //this variable isn't used by all entities, but if it's not here, collision detection can't do its thing
  float speedModifier = 1; // ditto for this variable
  Entity target; //and this one too
  int priority; //this one is a sorting alg thing - lower numbers render first
  
  Entity(int _x, int _y){
    x = _x;
    y = _y;
  }
  
  void display(){
    rect(x, y, 1, 1);
  }
  
  void act(){
    
  }
  
  void collisionHandler(Entity target){
    //once again, only used by terrain, but collision detection code means it has to exist here as well, even though only the terrain override will ever be called. fucking processing i swear
  }
}
