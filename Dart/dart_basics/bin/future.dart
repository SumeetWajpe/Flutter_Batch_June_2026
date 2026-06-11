void main() {
  print("App Started..");
  Future.delayed(Duration(seconds: 0), () {
    print("Hello from Future !");
  });
  print("App Ended..");
}
