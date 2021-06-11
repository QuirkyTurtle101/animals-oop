//this is for the Plant class and its subclasses - characterized by moving

class Animal extends Entity{
  float speedX;
  float speedY;
  
  Animal(int x, int y){
    super(x, y);
    priority = 1;
  }
  
  void act(){
    x += speedX*speedModifier;
    y += speedY*speedModifier;
    if(x<0||x>800){
      speedX = -speedX;
    }
    if(y<100||y>600){
      speedY = -speedY;
    }
    if(target != null && dist(x, y, target.x, target.y) > target.size){
      speedModifier = 1;
      target = null;
    }
  }
}

class Dog extends Animal{
  Dog(int _x, int _y){
    super(_x, _y);
    speedX = 2;
    speedY = 1;
  }
  
  void display(){
    fill(37, 29, 22);
    ellipse(x, y, 10, 10);
  }
}

class Human extends Animal{
  Human(int _x, int _y){
    super(_x, _y);
    speedX = 1;
    speedY = 2;
  }
  
  void display(){
    fill(255, 220, 177);
    rectMode(CENTER);
    rect(x, y, 20, 20);
  }
  
  void act(){
    x += speedX;
    y += speedY;
    if(x<0||x>800){
      speedX = -speedX;
    }
    if(y<100||y>600){
      speedY = -speedY;
    }
  }
}
