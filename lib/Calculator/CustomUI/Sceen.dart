import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../list_button.dart';
import 'SquareButton.dart';
class Screen extends StatelessWidget {
  String history = '';
  String result = '';
  void numClick(String text){

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    list_button button = Provider.of(context);
    return Container(
      height: size.height *0.25 ,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10,top: size.height * 0.05),
            child: Text(
              'a',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            )
          ),
          SizedBox(height: 10,),
          Container(
            height: 4,
            // width: size.width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color : Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10,top:10),
            child: Text(
              result,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25
            ),
            ),
          ),
        ],
      ),
    );
  }
}
