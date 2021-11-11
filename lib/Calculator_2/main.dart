import 'package:flutter/material.dart';

import 'Button.dart';
import 'list_Nums.dart';

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
    setState((){
      textToDisplay = res;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 30, 35, 1),
        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(53, 55, 59, 1),
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
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ],
              ),
          ),
            ),
              Flexible(
                flex: 5,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4, crossAxisSpacing: 15,
                                mainAxisSpacing: 7
                            ),
                            itemCount: 16,
                            itemBuilder: (context,index){
                              return  ButtonNumber(text: list_Nums
                                  .listnums[index].value.toString(), select:
                              index, click: btnClick,);
                            }),
                      ),
                      Flexible(
                          flex: 1,
                          child : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: ButtonNumber(text: list_Nums
                                      .listnums[16].value.toString(), select:
                                  17,
                            click: btnClick,)
                              ),
                              Flexible(
                                  flex: 1,
                                  child:ButtonNumber(text: list_Nums
                                      .listnums[17].value.toString(), select:
                                  18,
                                click: btnClick,)
                              ),
                              Flexible(
                                  flex: 1,
                                  child: ButtonNumber(text: list_Nums
                                      .listnums[18].value.toString(), select:
                                  19,
                                click: btnClick,)
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
