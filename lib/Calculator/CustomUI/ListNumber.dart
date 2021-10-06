import 'package:flutter/material.dart';
import '../Nums.dart';
import 'Flex.dart';
import 'SquareButton.dart';

class ListNumber extends StatefulWidget {
  const ListNumber({Key? key}) : super(key: key);

  @override
  _ListNumberState createState() => _ListNumberState();
}

class _ListNumberState extends State<ListNumber> {
  @override
  Widget build(BuildContext context) {
    void btnClick(String btnVal){
      print(btnVal);
    }
    return Container(
      child: Column(
        children: [
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 5
                ),
              itemCount: 16,
              itemBuilder: (context,index){
                return SquareButton(
                  select: index,num: listnums[index],press : btnClick
                //     (String value){
                //   setState(() => listnums[index].value = value);
                // }
                );
              }),
          ),
          Flexible(
            flex: 1,
            child : FlexRow()
          ),
        ],
      ),
    );
  }
}
