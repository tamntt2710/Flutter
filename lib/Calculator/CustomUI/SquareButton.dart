import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Nums.dart';
import '../list_button.dart';
class SquareButton extends StatelessWidget {
  int select;
  Nums? num;
  Function press;
  SquareButton({Key? key,required this.select,required  this.num,required this.press}) :
        super
      (key: key);

  @override
  Widget build(BuildContext context) {
    list_button button = Provider.of(context);
    return InkWell(
      onTap: (){
        button.show(select);
        press(select);
      },
      child: Container(
        alignment: Alignment.center,
        width: 87,
        height: 87,
        decoration: BoxDecoration(
          color: Colors.black38,
         borderRadius:select % 4 == 3? BorderRadius.all(Radius.circular(90))
          :BorderRadius.all(Radius.circular(10))
        ),
        child: Text(
         "${num!.value}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
