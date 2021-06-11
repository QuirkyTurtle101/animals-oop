//this is for the Terrain class and its subclasses - characterized by affecting objects of the Animal class that contact them

class Terrain extends Entity{
  float speedModifier;
  int size = 100;
  
  Terrain(int x, int y){
    super(x, y);
  }
  
  void collisionHandler(Entity target){
    target.speedModifier = speedModifier;
  }
}

class Swamp extends Terrain{
  
  Swamp(int _x, int _y){
    super(_x, _y);
    speedModifier = 0.8;
    
  }
  
  void display(){
    fill(114, 135, 0);
    ellipseMode(RADIUS);
    ellipse(x, y, size, size);
  }
}

class Ice extends Terrain{
  
  Ice(int _x, int _y){
    super(_x, _y);
    speedModifier = 1.2;
  }
  
  void display(){
    fill(165, 242, 243);
    ellipseMode(RADIUS);
    ellipse(x, y, size, size);
  }
}
