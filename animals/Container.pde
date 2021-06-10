//this is for our Container class - it contains every object that exists in the game world. we also find the Toolbar container object, obviously for our toolbar, which may not be implemented.

class Container{
  
}

class Toolbar{
  int toolbarSize;
  
  Toolbar(int _toolbarSize){
    toolbarSize = _toolbarSize; //the word toolbar is losing all meaning already - maybe i shouldn't be working on this at 10:15 while tired and mildly dissociated
  }
  
  void display(){
    rect(0, 0, 799 /*for whatever fucking reason, 800 displays wrong despite being the right size, but 799 displays right. complete wizardry, but whatever, as the Processing gods command i guess*/, toolbarSize);
  }
}
