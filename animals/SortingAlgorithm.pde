//here be dragons

ArrayList<Entity> bubbleSort(ArrayList<Entity> toSort){
  Entity temp;
  boolean sorted = false;
  
  while(!sorted){
    sorted = true;
    for(int i = 0; i < toSort.size()-1; i++){
      if(toSort.get(i).priority < toSort.get(i+1).priority){
        temp = toSort.get(i);
        toSort.set(i, toSort.get(i+1));
        toSort.set(i+1, temp);
      }
    }
  }
  
  return(toSort);
}
