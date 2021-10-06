import 'package:flutter/material.dart';
import 'package:start_now/Calculator/CustomUI/SquareButton.dart';

import '../Nums.dart';
class FlexRow extends StatefulWidget {
  const FlexRow({Key? key}) : super(key: key);

  @override
  _FlexRowState createState() => _FlexRowState();
}

class _FlexRowState extends State<FlexRow> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: SquareButton(
                select: 17,num: listnums[16],press : (String value){
              setState(() => listnums[16].value = value);
            }
            )
        ),
        Flexible(
            flex: 1,
            child: SquareButton(
              select: 18,num: listnums[17],press : (String value){
              setState(() => listnums[17].value = value);
            }
            )
        ),
        Flexible(
            flex: 1,
            child: SquareButton(
              select: 19,num: listnums[18],press : (String value){
                  setState(() => listnums[18].value = value);}
            )
        ),
      ],
    );
  }
}

