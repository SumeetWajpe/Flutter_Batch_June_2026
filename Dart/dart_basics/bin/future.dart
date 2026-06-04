void main() {
  print("App Started..");
  Future.delayed(Duration(seconds: 5), () {
    print("Hello from Future !");
  });
  print("App Ended..");
}
