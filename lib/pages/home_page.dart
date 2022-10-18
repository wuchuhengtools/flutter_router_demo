import 'package:flutter/material.dart';
import 'package:flutterdemo/route/index.dart';

class HomePage extends Page {
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return const TmpPage();
      },
    );
  }
}

class TmpPage extends StatelessWidget {
  const TmpPage({Key? key}) : super(key: key);
  void onPressed() {
    route.push('/chapter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('Home page'),
        ElevatedButton(onPressed: onPressed, child: const Text('Chapter'))
      ],
    ));
  }
}
