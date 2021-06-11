//this is for the Plant class and its subclasses - characterized by growth over time to a limit

class Plant extends Entity{
  float size;
  float growthSpeed;
  float growthLimit;
  
  Plant(int x, int y){
    super(x, y);
  }
  
  void act(){
    if(size < growthLimit){
      size += growthSpeed;
    }
  }
}

class Tree extends Plant{
  Tree(int x, int y){
    super(x, y);
    size = 10;
    growthLimit = 50;
    growthSpeed = 0.1;
  }
  
  void display(){
    fill(0, 255, 0);
    ellipse(x, y, size, size);
  }
}

class Flower extends Plant{
  Flower(int x, int y){
    super(x, y);
    size = 1;
    growthLimit = 5;
    growthSpeed = 0.1;
  }
  
  void display(){
    fill(0, 0, 255);
    ellipse(x, y, size, size);
  }
}
