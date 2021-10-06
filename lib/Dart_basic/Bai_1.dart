int inMax(List<int> list){
  var max = list[0];
  for(int i = 0; i<list.length;i++){
    if(max < list[i]){
      max=list[i];
    }
  }
  return max;
}
int inMin(List<int> list){
  var min = list[0];
  for(int i = 0; i<list.length;i++){
    if(min > list[i]){
      min=list[i];
    }
  }
  return min;
}
void soNguyenChan(List<int> list){
  list.forEach((element) {
    if(element %2 == 0){
      print(element);
    }
  });
}
void soNguyenChiaHet(List<int> list){
  list.forEach((element) {
    if(element %2 == 0 &&element%3==0){
      print(element);
    }
  });
}
void inUocOfMax(List<int> list){
  var max = list[0];
  for(int i = 0; i<list.length;i++){
    if(max < list[i]){
      max=list[i];
    }
  }
  list.forEach((element) {
    if(max % element == 0){
      print(element);
    }
  });
}
void inBoiOfMin(List<int>list){
  var min = list[0];
  for(int i = 0; i<list.length;i++){
    if(min > list[i]){
      min=list[i];
    }
  }
  list.forEach((element) {
    if(element % min == 0){
      print(element);
    }
  });
}
