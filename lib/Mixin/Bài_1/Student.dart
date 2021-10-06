import 'package:start_now/Mixin/B%C3%A0i_1/People.dart';

class Student extends People {
  var maLop;
  var nganhHoc;
  var khoa;

  Student(name, address, dateOfBirth, sex, maLop, nganhHoc, khoa) {
    super.name = name;
    super.address = address;
    super.dateOfBirth = dateOfBirth;
    super.sex = sex;
    this.maLop = maLop;
    this.nganhHoc = nganhHoc;
    this.khoa = khoa;

  }
  @override
  String toString() {
    // TODO: implement toString
    return super.toString()+this.maLop+this.nganhHoc+this.khoa;
  }
}
