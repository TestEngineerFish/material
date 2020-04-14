import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  @override
  _FloatingActionButtonDemo createState() => _FloatingActionButtonDemo();
}

class _FloatingActionButtonDemo extends State<FloatingActionButtonDemo> {
  var _color = randomColor();
  _onPressed() {
    setState(() {
      _color = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(floatingActionButtonDemoName),
      ),
      backgroundColor: _color,
      body: Center(
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _onPressed,
        ),
      ),
    );
  }
}
