// O stream serve para ficar recebendo dados o tempo o todo e depois entregar
// o metodo de return vai ser yield e o asunc via ser async*

import 'dart:async';

void main() async {
  Stream myStream(int intervalo, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print("Counting: $i");
      await Future.delayed(Duration(seconds: intervalo));
      yield i++;
    }
    print("The Stream is finished");
  }

  var kakoStream = myStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = myStream(1).listen((event) {
    if (event.isEven) {
      print("This number is Even!");
    }
  }, onError: (e) {
    print("An error happen");
  }, onDone: () {
    print("The subscriber is gone");
  });
  kakoStream.map((event) => "Subscriber 2 watching: $event").listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print("Stream paused");
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print("Stream resumed");
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print("Stream canceled");

  print("Main is finish");
}
