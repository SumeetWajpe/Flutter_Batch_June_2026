void main() {
  Car carObj = Car("AUDI", 220);
  print(carObj.name);
}

class Car {
  // String name = "BMW";
  // double speed = 200;
  String? name;
  double? speed;

  // Car() {
  //   name = "BMW";
  //   speed = 200;
  // }

  Car(String name, double speed) {
    this.name = name;
    this.speed = speed;
  }
}
