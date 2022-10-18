import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/pages/chapter_page.dart';
import 'package:flutterdemo/pages/home_page.dart';
import 'package:wuchuheng_router/wuchuheng_router.dart';

typedef PageFuncType = Widget Function();

final route = WuchuhengRouter(
  [
    RoutePageInfo('/', () => HomePage()),
    RoutePageInfo('/chapter', () => ChapterPage()),
  ],
  before: (RoutePageInfo pageInfo) async {
    await Future.delayed(const Duration(seconds: 5));
    return pageInfo;
  },
);
