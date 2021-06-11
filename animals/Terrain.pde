//this is for the Terrain class and its subclasses - characterized by affecting objects of the Animal class that contact them

class Terrain extends Entity{
  float speedModifier;
  
  Terrain(int x, int y){
    super(x, y);
    size = 75;
    priority = 3;
  }
  
  void collisionHandler(Entity target){
    target.speedModifier = speedModifier;
    target.target = this;
  }
}

class Swamp extends Terrain{
  
  Swamp(int _x, int _y){
    super(_x, _y);
    speedModifier = 0.4;
    
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
    speedModifier = 1.6;
  }
  
  void display(){
    fill(165, 242, 243);
    ellipseMode(RADIUS);
    ellipse(x, y, size, size);
  }
}
