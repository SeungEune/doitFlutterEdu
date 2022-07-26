//116p
//126p

import 'package:flutter/material.dart';
import '../Chapter5/125p_animalItem.dart';

class FirstApp extends StatelessWidget {

  //116p
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       child: Center(
  //         child: Text('첫 번째 페이지'),
  //       ),
  //     ),
  //   );
  // }


  //126p
  final List<Animal>? list;
  FirstApp({Key? key, this.list}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.builder(itemBuilder: (context, position) {
            return GestureDetector(
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        list![position].imagePath!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                      Text(list![position].animalName!)
                    ],
                  ),
                ), //이부분에 위젯을 이용해 데이터를 표시
              onTap: () {
                  AlertDialog dialog = new AlertDialog(
                    content: Text('이 동물은 ${list![position].kind}입니다.', style: TextStyle(fontSize: 30.0),),
                  );
                  showDialog(context: context, builder: (BuildContext context) => dialog);
              },
            );
          },
          itemCount: list!.length,),
        ),
      ),
    );
  }
}
