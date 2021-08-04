import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridview_kullanimi.dart';
import 'package:flutter_application_1/listview_kullanimi.dart';
import 'package:flutter_application_1/listview_layout_problemleri.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'custom_scroll_ve_sliver.dart';

void main() {
  runApp(
    MaterialApp(
      title: "flutter ders",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        //brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: CollapsableToolbarOrnek(),
      ),
    ),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CollapsableToolbarOrnek(),
      builder: EasyLoading.init(),
    );
  }
}
