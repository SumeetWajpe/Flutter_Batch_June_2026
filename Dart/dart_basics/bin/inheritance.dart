void main() {
  JamesBondCar jbc = JamesBondCar(speed: 300, name: "Aston Martin");
  // print(jbc.name);
  print(jbc.accelerate());

  Employee e = Employee();
  TennisPlayer tp = TennisPlayer();
}

class Car {
  final String? name;
  final double? speed;
  Car(this.name, this.speed);

  String accelerate() {
    return ("The car $name is running at $speed kmph ");
  }
}

class JamesBondCar extends Car {
  bool? isArmed;
  JamesBondCar({String name = "AUDI", double speed = 200, this.isArmed = false})
    : super(name, speed);

  @override
  String accelerate() {
    return "${super.accelerate()}  Is it armed ? : $isArmed";
  }
}

// Mixin
mixin Person {
  String name = "";
  double age = 0;
}

mixin Athelete {
  bool isFit = true;
}

class Employee with Person {
  int empId = 0;
  double salary = 0;
}

class Player {
  String stats = "";
}

class TennisPlayer extends Player with Person, Athelete {
  bool isSeeded = false;
}
