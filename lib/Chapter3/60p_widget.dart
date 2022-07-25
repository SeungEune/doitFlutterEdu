//60p ~69p

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page',),
      home: Container(
        color : Colors.white,
        child: Center(
          child: Text('hello\nFlutter', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 20),),
      )
      )
    );
  }
}