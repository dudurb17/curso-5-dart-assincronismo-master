void main() {
  // Future myFuture = Future(() {
  //   print("Going back to the Future");
  //   return 21;
  // }).then((value) => print("The value is $value"));

  Future<int> myFutureFunc() async {
    print("I have a function in the future");
    await Future.delayed(Duration(seconds: 2));
    throw Exception();
    return 12;
  }

  myFutureFunc()
      .then((value) => print("My function value is: $value"))
      .onError((error, stackTrace) => print("An Error occurred"))
      .whenComplete(() => print("The future is Over"));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print("I have a functional Function");
      await Future.delayed(Duration(seconds: 5));
      return 42;
    } catch (e) {
      print("An error occurred $e");
      return 404;
    } finally {
      print("Finalizou a função");
    }
  }

  myFutureErrorFunc(0, 1).then((value) => print("the value is :$value"));
  print("Done with main");
}
