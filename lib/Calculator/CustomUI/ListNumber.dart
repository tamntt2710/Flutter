import 'package:flutter/material.dart';
import '../list_button.dart';
import 'SquareButton.dart';
import 'package:provider/provider.dart';
class ListNumber extends StatefulWidget {
  const ListNumber({Key? key}) : super(key: key);

  @override
  _ListNumberState createState() => _ListNumberState();
}

class _ListNumberState extends State<ListNumber> {

  @override
  Widget build(BuildContext context) {
    list_button buttonValue = Provider.of<list_button>(context);
    void btnClick(int index){
      print(buttonValue.listnums[index].value.toString());
      buttonValue.listnums[index].value.toString();
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
                  select: index,num: list_button().listnums[index],press : btnClick
                );
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
                    child: SquareButton(
                        select: 17,num: list_button().listnums[16],press :btnClick
                    )
                ),
                Flexible(
                    flex: 1,
                    child: SquareButton(
                        select: 18,num: list_button().listnums[17],press : btnClick
                    )
                ),
                Flexible(
                    flex: 1,
                    child: SquareButton(
                        select: 19,num: list_button().listnums[18],press :btnClick
                    )
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
