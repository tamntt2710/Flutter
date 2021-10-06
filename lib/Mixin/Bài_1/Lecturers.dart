import 'package:start_now/Mixin/B%C3%A0i_1/People.dart';

class Lectures extends People{
  var khoa;
  late List monHoc;
  var namKinhNghiem;
  Lectures(name, address, dateOfBirth, sex,khoa,List monHoc,namKinhNghiem){
    super.name = name;
    super.address = address;
    super.dateOfBirth = dateOfBirth;
    super.sex = sex;
    this.khoa = khoa;
    this.monHoc = monHoc;
    this.namKinhNghiem = namKinhNghiem;
  }
  @override
  String toString() {
    // TODO: implement toString
    List monHoc = this.monHoc;
    return super.toString()+this.khoa+ '${monHoc.length}'+this.namKinhNghiem;
  }
}