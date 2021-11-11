import 'package:flutter/material.dart';

import 'Nums.dart';
class list_button extends ChangeNotifier{
  var listnums = <Nums>[
  Nums(value: "C"),
  Nums(value: "\$"),
  Nums(value: "\%"),
  Nums(value: "\/"),
  Nums(value : "7"),
  Nums(value : "8"),
  Nums(value : "9"),
  Nums(value : "-"),
  Nums(value : "4"),
  Nums(value : "5"),
  Nums(value : "6"),
  Nums(value : "+"),
  Nums(value : "1"),
  Nums(value : "2"),
  Nums(value : "3"),
  Nums(value : "*"),
  Nums(value : "0"),
  Nums(value : "."),
  Nums(value : "="),
  ];
  void show(index){
    listnums[index].value;
    notifyListeners();
  }
}
