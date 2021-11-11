
import 'package:flutter/material.dart';
import 'CustomUI/ListNumber.dart';
import 'CustomUI/Sceen.dart';
import 'package:provider/provider.dart';
import 'list_button.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) =>list_button(),
      child: MaterialApp(
          title: "Calculator",
          home: Scaffold(
            body: App(),
          ),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Screen(),
          Expanded(
            child: ListNumber(),
          )
        ],
      ),
    );
  }
}

