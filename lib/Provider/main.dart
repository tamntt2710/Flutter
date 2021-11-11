import 'package:flutter/material.dart';

import 'basic_provider.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: Container(
         child: basic_provider(),
       ),
     ),
   );
  }

}