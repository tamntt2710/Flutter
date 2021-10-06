void main(){
  var dog = new Dog(3,color: "red",tail: 2);
  print("${dog.color} - ${dog.tail} - ${dog.color} ");
}
class Dog{
  late int leg;
  String color;
  int tail;
  Dog(int legs, {this.color = "yelow", required this.tail}){
   this.leg = legs;
  }
}
