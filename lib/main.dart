import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ufoff/home_page/home_page.dart';
import 'package:ufoff/notify_engine/notifysetpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SourceHanSansJP-Normal',
      ),
      home: HomePage(),
    );
  }
}
