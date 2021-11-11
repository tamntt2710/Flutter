import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/notifi.dart';
class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                  Provider.of<provider_model>(context).history,
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
                Provider.of<provider_model>(context).textToDisplay,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

}