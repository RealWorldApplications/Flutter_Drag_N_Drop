import 'package:flutter/material.dart';

class DropBox extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;

  DropBox(this.initPos, this.label, this.itemColor);

  @override
  DropBoxState createState() => DropBoxState();
}

class DropBoxState extends State<DropBox> {
  Offset position = Offset(0.0, 0.0);

  Color selectedColor = Colors.white10;

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      bottom: 0.0,
      child: DragTarget(
        onAccept: (Color color) {
          selectedColor = color;
        },
        builder: (BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,) {
          return Container(
            width: 200.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: accepted.isEmpty ? selectedColor : Colors.white,
            ),
            child: Center(
              child: Text(widget.label,
                  style: TextStyle(color: Colors.black,
                      fontSize: 24.0,
                      decoration: TextDecoration.none)),
            ),
          );
        },
      ),
    );
  }
}
