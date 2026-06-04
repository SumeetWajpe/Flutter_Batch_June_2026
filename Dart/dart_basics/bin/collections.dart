void main() {
  // List
  //var cars = ["BMW", "AUDI", "MERC", 10]; // !Strongly typed
  // List<String> cars = ["BMW", "AUDI", "MERC"];
  // print("The list of all cars-> $cars");
  // print("The first car ${cars[0]}");
  // print("The length of cars list - ${cars.length}");
  // cars.add("TATA");
  // print("The list of all cars-> $cars");

  // Set - Unordered collection of unique items
  Set<String> cars = {"BMW", "AUDI", "MERC", "BMW"};
  print(cars);

  //Map - Key/Value
  Map<String, String> cityWithPins = {"Pune": "410576", "Nagpur": "440022"};
  print(cityWithPins["Pune"]);
  var cities = cityWithPins.keys.toList();
  print(cities);
}
