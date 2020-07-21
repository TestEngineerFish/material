import 'package:flutter/material.dart';
import 'package:material/resources/macro.dart';



class ListennerDemo extends StatefulWidget {
  @override
  _ListennerDemo createState() => _ListennerDemo();
}

class _ListennerDemo extends State<ListennerDemo> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Listener(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: _top,
                left: _left,
                child: GestureDetector(
                  child: Container(
                    color: Colors.orange,
                    width: 50,
                    height: 50,
                  ),
                  onTap: () => print("tap"),
                  onDoubleTap: () => print("double tap"),
                  onLongPress: () => print("long tap"),
                  onPanUpdate: (e) {
                    setState(() {
                      _top += e.delta.dy;
                      _left += e.delta.dx;
                    });
                  },
                ),
              )
            ],
          ),
        ),
        onPointerDown: (event) => print("Down: $event"),
        onPointerUp: (event) => print("Up: $event"),
        onPointerCancel: (event) => print("Cancel: $event"),
        onPointerMove: (event) => print("Move: $event"),
        onPointerSignal: (event) => print("Signal: $event"),
      ),
    );
  }
}
