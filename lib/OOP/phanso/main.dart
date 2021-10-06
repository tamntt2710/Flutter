import 'package:flutter/material.dart';
import 'package:start_now/Dart_basic/Bai_1.dart';
import 'package:start_now/OOP/phanso/phanSo.dart';
import 'package:start_now/OOP/phanso/thucHienPhepTinh.dart';
void main(){
  // List <int> list=[2,4,5,11,-12,12,42,56];
  // print('${inMax(list)}');
  // print('${inMin(list)}');
  // print('So nguyen chan');
  // soNguyenChan(list);
  // print("Chia het 2 va 3");
  // soNguyenChiaHet(list);
  // print("Uoc of Max");
  // inUocOfMax(list);
  // print("Boi cua Min");
  // inBoiOfMin(list);
  // print("Enter your name?");
  var m = phanSo(tuSo: 1,mauSo: 3);
  var n = phanSo(tuSo: 2,mauSo: 5);
  congPhanso(m,n);
  // Printing the name
  runApp(
      Center(child: Text(
        '[0]',
        style: TextStyle(fontSize: 30),
        textDirection: TextDirection.ltr,
      ),)
  );
}


