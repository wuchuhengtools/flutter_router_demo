import 'dart:async';

class Tmp {
  List<Function> tmplist = [];
  List<Function()> callbackList = [];

  // Future<bool> hasRegister() async {
  //   Completer<bool> completer = Completer();
  //   tmplist.add(() {
  //     print('hello');
  //   });
  //
  //   tmplist[0]();
  //
  //   return completer.future;
  // }

  Future<bool> hasRegister() async {
    Completer<bool> completer = Completer();
    callbackList.add(
      () {
        print('hello');
      },
    );
    if (callbackList.length == 1) {
      callbackList[0]();
    }

    return completer.future;
  }
}
