//this is for the Plant class and its subclasses - characterized by moving

class Animal extends Entity{
  int speedX;
  int speedY;
  
  void move(){
    x += speedX;
    y += speedY;
  }
}

class Dog extends Animal{
  void display(){
    
  }
}

class Human extends Animal{
  float speedModifier = 1;
  
  void display(){
    
  }
  
  void move(){
    x += speedX;
    y += speedY;
  }
}
