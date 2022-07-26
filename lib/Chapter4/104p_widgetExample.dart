//104p
//덧셈 계산기 앱 만들기
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget {
  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {

  String sum = '';

  //텍스트필드를 다루려면 TextEditingController
  TextEditingController value1 = new TextEditingController();
  TextEditingController value2 = new TextEditingController();

  List _buttonList = ['더하기', '빼기', '곱하기', '나누기'];
  List<DropdownMenuItem<String>> _dropDownMenuItems = new List.empty(growable: true);
  String? _buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '결과 : $sum',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: TextField(keyboardType: TextInputType.number, controller: value1),
              ),

              Padding(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: TextField(keyboardType: TextInputType.number, controller: value2,),
              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add),
                      Text(_buttonText!)
                    ],
                  ),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),

                  onPressed: () {
                    setState(() {
                      var valueInt = double.parse(value1.value.text);
                      var value2Int = double.parse(value2.value.text);
                      var result;

                      if(_buttonText == '더하기'){
                        result = valueInt + value2Int;
                      } else if (_buttonText == '빼기') {
                        result = valueInt - value2Int;
                      } else if (_buttonText == '곱하기') {
                        result = valueInt * value2Int;
                      } else {
                        result = valueInt / value2Int;
                      }
                      sum = '$result';
                    });
                  },)
              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: DropdownButton(items: _dropDownMenuItems,
                  onChanged: (String? value) {
                    setState(() {
                        _buttonText = value;
                    });
                  }, value: _buttonText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    for (var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(value: item, child: Text(item)));
    }
    _buttonText = _dropDownMenuItems[0].value;
  }
}