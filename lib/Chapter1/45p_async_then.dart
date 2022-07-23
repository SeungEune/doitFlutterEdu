//45p
//then() 함수 사용법
void main() async {
    await getVersionName().then((value) => {
      print(value)
    });
    print('end proce');
}

Future<String> getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName(){
  return 'Android Q';
}