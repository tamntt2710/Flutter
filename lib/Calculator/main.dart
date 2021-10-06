

import 'package:flutter/material.dart';

import 'CustomUI/Flex.dart';
import 'CustomUI/ListNumber.dart';
import 'CustomUI/Sceen.dart';
import 'CustomUI/SquareButton.dart';
import 'Nums.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Calculator",
        home: Scaffold(
          body: App(),
        ),
      );
  }
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Screen(),
            Expanded(
              child: Container(
                 child: ListNumber(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

