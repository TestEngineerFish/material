import 'package:flutter/material.dart';
import 'package:material/resources/macro.dart';

class ListennerDemo extends StatefulWidget {
  @override
  _ListennerDemo createState() => _ListennerDemo();
}

class _ListennerDemo extends State<ListennerDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Listener(
        child: Container(
          color: randomColor(),
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
