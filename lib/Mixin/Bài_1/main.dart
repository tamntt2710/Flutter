import 'package:start_now/Mixin/B%C3%A0i_1/Lecturers.dart';
import 'package:start_now/Mixin/B%C3%A0i_1/Student.dart';

void main(){
 var a = new Student("Thanh Tam", "Nam Dinh", "27/10/2000", "Nu", "CT3D", "CNTT"
     "", "CNTT");
  var b = new Lectures("Hung Viet", "Ha Noi", "1/1/1970", "Nam", "CNTT",
      ["VXL","DTS"], 7);
  print(a.toString());
  print(b.toString());
}