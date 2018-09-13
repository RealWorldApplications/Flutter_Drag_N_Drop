import 'package:flutter/material.dart';
import 'package:flutter_drag_n_drop/drag_n_drop.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'title',
      theme: new ThemeData(primaryColor: Colors.lime),
      home: new DragNDrop(),
    );
  }
  }





