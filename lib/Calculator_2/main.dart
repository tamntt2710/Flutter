import 'package:flutter/material.dart';

import 'Button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int firstNum;

  late int secondNum;

  String history = '';
  String textToDisplay= '';
  late String res;
  late String operation;
  void btnClick(String btnVal){
    print(btnVal);
    if(btnVal == 'C'){
      textToDisplay='';
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
      if(operation == '/'){
        res = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation.toString() +secondNum
            .toString();
      }
    }else{
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState((){
      textToDisplay = res;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                   // margin: EdgeInsets.only(left: ),
                      padding:
                      EdgeInsets.only(right: 10, top: 90),
                      child: Text(
                        history,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 4,
                    // width: size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, top: 10),
                    child: Text(
                      textToDisplay,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              ),
          ),
            ),
              Flexible(
                flex: 5,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonNumber(
                            text: 'C',
                            select: 0,
                            click: btnClick,
                          ),
                          ButtonNumber(
                            text: '\$',
                            select: 1,
                            click: btnClick,
                          ),
                          ButtonNumber(text: '%', select: 2, click: btnClick,),
                          ButtonNumber(
                            text: '/',
                            select: 3,
                            click: btnClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonNumber(
                            text: '7',
                            select: 4,
                            click: btnClick,
                          ),
                          ButtonNumber(
                            text: '8',
                            select: 5,
                            click: btnClick,
                          ),
                          ButtonNumber(text: '9', select: 6, click: btnClick,),
                          ButtonNumber(
                            text: '-',
                            select: 7,
                            click: btnClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonNumber(
                            text: '4',
                            select: 8,
                            click: btnClick,
                          ),
                          ButtonNumber(
                            text: '5',
                            select: 9,
                            click: btnClick,
                          ),
                          ButtonNumber(text: '6', select: 10, click: btnClick,),
                          ButtonNumber(text: '+', select: 11, click: btnClick,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonNumber(
                            text: '1',
                            select: 12,
                            click: btnClick,
                          ),
                          ButtonNumber(
                            text: '2',
                            select: 13,
                            click: btnClick,
                          ),
                          ButtonNumber(text: '3', select: 14, click: btnClick,),
                          ButtonNumber(text: '*', select: 15, click: btnClick,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: ButtonNumber(
                              text: '0',
                              select: 16,
                              click: btnClick,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ButtonNumber(
                              text: '.',
                              select: 18,
                              click: btnClick,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ButtonNumber(
                              text: '=',
                              select: 19,
                              click: btnClick,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
