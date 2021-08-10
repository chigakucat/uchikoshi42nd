import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/home_page/home_page.dart';
import 'package:ufoff/notify_engine/notify_engine.dart' as NotifyEng;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var n=NotifyEng.ufoNotify();
    n.initialize();
    Firebase.initializeApp();
    return MaterialApp(
      title: 'UchikoshiFesOnline',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SourceHanSansJP-Normal',
      ),
      home: HomePage(),
    );
  }
}
