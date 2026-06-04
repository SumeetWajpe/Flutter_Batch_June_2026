void main() {
  // Car carObj = Car("MERC", 220);
  Car carObj = Car(speed: 300);
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

  // Car(String name, double speed) {
  //   this.name = name;
  //   this.speed = speed;
  // }

  // Named parameters
  // Car({String? name,double? speed}){}

  // Generative Constructors
  // Car(this.name, this.speed);
  // Car(this.name, [this.speed = 100]);
  Car({this.name = "BMW", this.speed = 200});  // important
}
