void main() {
  // dynamic data = 10;
  // data = "Hello";
  // data = 200;
  // print(data.toLowerCase()); // crashes at runtime
  printBook(title: "Wings Of Fire",author: "Dr. PAJ Abdul Kalam");
}

// Basic function
// void printBook(String author, String title) {
//   print(author);
// }

// Functions with - Named Parameters
void printBook({required String author, required String title}) {
  print(author);
}
