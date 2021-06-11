//this is for the Terrain class and its subclasses - characterized by affecting objects of the Animal class that contact them

class Terrain extends Entity{
  float speedModifier;
  int size;
  
  Terrain(int x, int y){
    super(x, y);
  }
  
  void act(){
    
  }
}

class Swamp extends Terrain{
  Swamp(int _x, int _y){
    super(_x, _y);
    speedModifier = 0.8;
  }
}

class Ice extends Terrain{
  Ice(int _x, int _y){
    super(_x, _y);
    speedModifier = 1.2;
  }
}
