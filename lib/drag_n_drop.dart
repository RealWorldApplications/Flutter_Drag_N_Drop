import 'package:flutter/material.dart';
import 'drag_box.dart';
import 'drop_box.dart';

class DragNDrop extends StatefulWidget {
@override
  State createState() => new DragNDropState();
}
class DragNDropState extends State<DragNDrop>{
  Color selectedColor = Colors.white10;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DragBox(Offset(20.0, 50.0), 'Blue', Colors.blue),
        DragBox(Offset(140.0, 50.0), 'Orange', Colors.orange),
        DragBox(Offset(260.0, 50.0), 'Green', Colors.lightGreen),
        DropBox(Offset(150.0, 150.0), 'Drop Here', Colors.white),

      ],
    );
  }
}