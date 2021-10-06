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
        width: 87,
        height: 87,
        decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius:select % 4 == 3? BorderRadius.all(Radius.circular(90))
                :BorderRadius.all(Radius.circular(10))
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
          ),
        ),
      ),
    );
  }
}
