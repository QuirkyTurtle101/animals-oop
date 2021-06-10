Container main;
Toolbar toolbar;

void setup(){
  size(800,600); 
  
  main = new Container();
  toolbar = new Toolbar(100);
}

void draw(){
  toolbar.display();
}

void mouseClicked(){
  
}
