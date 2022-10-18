import 'package:flutter/material.dart';
import 'package:flutterdemo/route/index.dart';

class ChapterPage extends Page {
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
    route.push('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chapter page'),
          ElevatedButton(onPressed: onPressed, child: const Text('Home')),
        ],
      ),
    );
  }
}
