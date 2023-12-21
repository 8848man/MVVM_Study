import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    // TODO: implement build
    throw MaterialApp(
      home: Home(),
    );
  }
}
