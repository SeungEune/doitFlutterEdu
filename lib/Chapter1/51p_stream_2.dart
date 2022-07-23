//51p
//then() 함수를 확용한 스트림 예
main() {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  // //가장 앞의 데이터 결과 : 1
  // stream.first.then((value) => print('first: $value'));
  //
  // //가장 마지막 데이터의 결과 : 5
  // stream.last.then((value) => print('last: $value'));
  //
  // //현재 스트림이 비어 있는지 확인 : true
  // stream.isEmpty.then((value) => print('isEmpty: $value'));
  //
  // //전체 길이 : 5
  // stream.length.then((value) => print('length: $value'));


  //(!)stram은 한번 사용하고 나면 없어짐
  stream.last.then((value) => print(value));
}