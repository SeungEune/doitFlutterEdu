//78p ~ 84p
//위젯의 생명주기

//1. 상태 생성 createState()                        : 처음 스테이트풀을 시작할 때 호출
//2. 위젯을 화면에 장착 mounted == true               : createState() 함수가 호출되면 mounted는 true
//3. 위젯을 추기화하는 initState()                    : State에서 제일 먼저 실행되는 함수. State 생성 후 한 번만 호출
//4. 의존성이 변경되면 호출하는 didChangeDependencies()  : initState() 호출 후에 호출되는 함수
//5. 화면에 표시하는 build()                         : 위젯 랜더링하는 함수. 위젯을 반환
//6. 위젯을 갱신하는 didUpdateWidget()               : 위젯을 변경해야 할 때 호출하는 함수
//7. 위젯의 상태를 걍신하는 setState()                 : 데이터가 변경되었음을 알리는 함수. 변경된 데이터를 UI에 적횽하기 위해 필요
//8. 위젯의 상태 관리를 중지하는 deactivate()           : State가 제거 될때 호출
//9. 위젯의 상태 관리를 완전히 끝내는 dispose()           : State가 완전히 제거되었을 때 호출
//10. 위젯을 화면에서 제거하면 mounted == false         : 모든 프로세스가 종료된 후 mounted가 false로 됨

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  //1
  State<StatefulWidget> createState() {
    print('createState');
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var test = 'hello';
  var _color = Colors.blue;

  @override
  //4
  Widget build(BuildContext context) {
    print('build');
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

  //최소 실행 시에 호출
  //2
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  //의존성이 변경 되면 호출 되는 함수.
  //initState가 호출 되고 호출됨
  //3
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}



