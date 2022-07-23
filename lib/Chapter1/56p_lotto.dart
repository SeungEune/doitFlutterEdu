//56p
//로또 번호 생성기

import 'dart:collection';
import 'dart:math' as math;
void main() {
  var rand = math.Random();
  HashSet<int> lotteryNumber = HashSet();

  while(lotteryNumber.length < 6) {
    lotteryNumber.add(rand.nextInt(45) + 1);
  }

  print(lotteryNumber);
}