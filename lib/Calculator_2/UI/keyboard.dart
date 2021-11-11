import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/list_Nums.dart';
import 'Button.dart';
import '../Model/notifi.dart';
class Button_key extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                  index, click: Provider.of<provider_model>
                    (context, listen: false).btnClick,);
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
                        click: Provider.of<provider_model>
                          (context, listen: false).btnClick,)
                  ),
                  Flexible(
                      flex: 1,
                      child:ButtonNumber(text: list_Nums
                          .listnums[17].value.toString(), select:
                      18,
                        click: Provider.of<provider_model>
                          (context, listen: false).btnClick,)
                  ),
                  Flexible(
                      flex: 1,
                      child: ButtonNumber(text: list_Nums
                          .listnums[18].value.toString(), select:
                      19,
                        click: Provider.of<provider_model>
                          (context, listen: false).btnClick,)
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

}