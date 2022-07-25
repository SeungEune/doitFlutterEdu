//88p ~ 95p
//스캐폴드 이용하기

import 'package:first_fultter_app/imageWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaterialFlutterApp();
  }
}

class _MaterialFlutterApp extends State<MaterialFlutterApp> {
    @override
    Widget build(BuildContext context) {
      // return Scaffold(
      //   //제목 줄 추가하기
      //   appBar: AppBar(title: Text('Material Design App'),),
      //
      //   //+ icon 추가
      //   floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      //     onPressed: () {
      //     },
      //   ),
      //
      //   //위젯을 여러 개 만들기
      //   body: Container(
      //     child: Center(
      //       child: Column(
      //         children: <Widget>[Icon(Icons.android), Text('android')],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //       ),
      //     ),
      //   ),
      // );

      //100p
      //image 추가하기
      return MaterialApp(
        title: 'Material Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: ImageWidgetApp(),
      );
    }
}
