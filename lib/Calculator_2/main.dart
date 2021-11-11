
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/keyboard.dart';
import 'UI/screen.dart';
import 'Model/notifi.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (_)=>provider_model(),
    child: MaterialApp(
      home: MyApp(),
    ),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(25, 30, 35, 1),
        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            children: [
              Screen(),
              Button_key(),
            ],
          ),
        ),
    );
  }
}

