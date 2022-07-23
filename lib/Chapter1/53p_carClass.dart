//54p
//자동차 클래스 구현 예
void main() {
  Car bmw = Car(320, 100000, 'BNW');
  Car benz = Car(250, 7000, 'benz');
  Car ford = Car(320, 100000, 'ford');

  bmw.saleCar();
  bmw.saleCar();
  bmw.saleCar();

  print(bmw.price);
}

class Car {
  int maxSpeed;
  num price;
  String name;

  Car(this.maxSpeed, this.price, this.name);

  num saleCar() {
    price = price * 0.9;
    return price;
  }
}