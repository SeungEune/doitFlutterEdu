//49p
//JSON 데이터 인코딩 예
import 'dart:convert';

void main () {
  var score = [
    {'score' : 40},
    {'score' : 80},
    {'score' : 100, 'overtime' : true, 'special_guest' : null}
  ];

  var jsonText = jsonEncode(score);
  print(jsonText ==
      '[{"score":40},{"score":80},'
      '{"score":100,"overtime":true,'
      '"special_guest":null}]');
}