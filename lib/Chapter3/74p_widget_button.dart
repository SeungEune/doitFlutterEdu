//74p ~ 77p

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var test = 'hello';
  var _color = Colors.blue;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('$test'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_color),
            ),
            onPressed: () {

              //버튼 명 바꾸기
              // if (test == 'hello') {
              //   setState((){
              //     test = 'flutter';
              //   });
              // } else {
              //   setState((){
              //     test = 'hello';
              //   });
              // }

              //버튼 색상 바꾸기
              if (_color == Colors.blue) {
                setState((){
                  test = 'flutter';
                  _color = Colors.amber;
                });
              } else {
                setState((){
                  test = 'hello';
                  _color = Colors.blue;
                });
              }
            },
          )
        ),
      ),
    );
  }
}