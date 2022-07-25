//비동기 처리 예 44p
void main(){
  checkVersion();
  print('end process');
}

Future checkVersion() async{
  var version = await lookUpVersion();
  print(version);
}

int lookUpVersion() {
  return 12;
}