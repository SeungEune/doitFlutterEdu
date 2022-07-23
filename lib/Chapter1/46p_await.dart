//46p
//await 키워드 활용 예
void main() {
  printOne();
  printTwo();
  printThree();
}

void printOne(){
  print('One');
}

void printThree(){
  print('Three');
}

//version_1
// void printTwo() async{
//   Future.delayed(Duration(seconds: 1), () {
//     print('Future!!');
//   });
//   print('Two');
// }

//version_2
void printTwo() async{
  await Future.delayed(Duration(seconds: 2), () {
    print('Future!!');
  });
  print('Two');
}