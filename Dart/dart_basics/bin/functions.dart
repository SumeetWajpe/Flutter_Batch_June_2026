void main() {
  // dynamic data = 10;
  // data = "Hello";
  // data = 200;
  // print(data.toLowerCase()); // crashes at runtime
  // printBook(title: "Wings Of Fire", author: "Dr. APJ Abdul Kalam");
  printBook("Dr. APJ Abdul Kalam", "Wings Of Fire");
}

// Basic function
// void printBook(String author, String title) {
//   print(author);
// }

// Functions with - Named Parameters
// void printBook({required String author, required String title}) {
//   print(author);
// }

// Optional parameters (with default values)
// void printBook({
//   required String author,
//   required String title,
//   int? numOfPages = 0,
// }) {
//   print("$author,$title,$numOfPages");
// }
// Default values for positional Parameters
void printBook(String author, String title, [int numOfPages = 0]) {
  print("$author,$title,$numOfPages");
}
