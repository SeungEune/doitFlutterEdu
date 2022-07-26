//116p
//126p


import 'package:first_fultter_app/Chapter5/125p_animalItem.dart';
import 'package:flutter/material.dart';
import '../Chapter5/125p_animalItem.dart';

class SecondApp extends StatelessWidget {

  //116p
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       child: Center(
  //         child: Text('두 번째 페이지'),
  //       ),
  //     ),
  //   );
  // }


  //126p
  final List<Animal>? list;
  SecondApp({Key? key, this.list}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('두 번째 페이지'),
        ),
      ),
    );
  }

}
