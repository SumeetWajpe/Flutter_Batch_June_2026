import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {
  var name = "Dart"; // Type inference
  // name = 10; // Error ~

  String s;

  /// declaration
  s = "Flutter !"; // definition
  s = "Flutter Programming !";
  // s = null; // Errror !

  print("Type of s is ${s.runtimeType}");
  String? str = "Hello"; // Nullable types
  str = null;

  // const
  // const PI = 3.14;
  // PI = 3.145445;//Error

  // const PI; // Error (must initialize constants)

  // final someVal;
  // someVal = 20;
  // someVal = 30; // Error

  // Difference - Final is a runtime consatnt & const is a compilte time constant
  final d = DateTime.now();
  // 100 lines of code
  // d = DateTime.now(); // Error
}
