import 'package:flutter/material.dart';
class provider_model extends ChangeNotifier{
  late int firstNum;
  late int secondNum;
  String history = '';
  String textToDisplay= '';
  late String res;
  late String operation;
  void btnClick(String btnVal){
    print(btnVal);
    if(btnVal == 'C'){
      history='';
      firstNum = 0;
      secondNum = 0;
      res = '';
    }else if(btnVal == '\$'){
      textToDisplay='';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    }else if(btnVal == '+' || btnVal == '-' || btnVal == '*' || btnVal == '/' ){
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    }else if(btnVal == '='){
      secondNum = int.parse(textToDisplay);
      if(operation == '+'){
        res = (firstNum + secondNum).toString();
        history = firstNum.toString() + operation.toString() +secondNum
            .toString();
      }
      if(operation == '-'){
        res = (firstNum - secondNum).toString();
        history = firstNum.toString() + operation.toString() +secondNum
            .toString();
      }
      if(operation == '*'){
        res = (firstNum * secondNum).toString();
        history = firstNum.toString() + operation.toString() +secondNum
            .toString();
      }
      if(operation == '/' || operation == '%'){
        res = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation.toString() +secondNum
            .toString();
      }
    }else{
      res = int.parse(textToDisplay + btnVal).toString();
    }
    textToDisplay = res;
    notifyListeners();
  }
}