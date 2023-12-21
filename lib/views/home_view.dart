import 'package:flutter/material.dart';
import 'package:project_for_mvvm/view_model/home_view_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data = HomeViewModel();

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(data.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.getCounter()),
            TextButton(
                onPressed: () {
                  // 비지니스 로직을 안 씁니다.
                  // 대신, 뷰모델을 호출합니다.
                  data.inc();
                },
                child: Icon(Icons.add))
          ],
        )));
  }
}
