import 'package:flutter/material.dart';
class ButtonNumber extends StatelessWidget {
  String text;
  int select;
  Function click;
  ButtonNumber({Key? key,required this.text,required this.select,required
  this.click}) : super
      (key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>click(text),
      child: Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            color : select % 4 == 3? Colors.yellow:Color(0xff35373B),
            border: Border.all(color: Color(0xff4B4D51),width: 2),
            borderRadius:select % 4 == 3? BorderRadius.all(Radius.circular(90))
                :BorderRadius.all(Radius.circular(10))
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color : select % 4 == 3?Colors.black:Colors.white,
                fontSize: 42,
            ),
          ),
        ),
      ),
    );
  }
}
