void main(){
  var dog = new Dog(1);

  dog.legs = 10;
   print(dog.legs);
  dog.talk();
  dog.fly();
}
/*
* 1. Constructor : Default,parameter constructor,Named constructor : Cach tao ra
*  nhiều constructor . Default và parameter không tồn tại song song
* 2.factory : kết hợp Named constructor để tạo ra nhiều constructor
* 3.Getter/Setter
* 4.Abstraction
* 5.Interface
*
* */
class Dog implements Animal{
  late int _legs;
  // Dog(){
  //   print("Default constructor");
  // }
  // Dog(int legs){
  //   print("Parameter constructor");
  //   this.legs = legs;
  // }
  set legs (int value) => _legs = value;
  int get legs => _legs;

  factory Dog(int type){
    if(type == 1){
      return Dog.Male();
    }
    return Dog.Female();
  }
  Dog.Male(){
    print("Named constructor");
    print("Male");
  }
  Dog.Female(){
    print("Female");
  }
  void talk(){
    print("Gau Gau");
  }

  @override
  void fly() {
  print("FLy");
  }

  @override
  void jogging() {
    // TODO: implement jogging
  }

  @override
  void swim() {
    // TODO: implement swim
  }
}
abstract class Animal{
 late int legs;
  void fly();
  void swim();
  void jogging(){
    print("Go");
  }
}