import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';
import 'package:date_format/date_format.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  @override
  _FloatingActionButtonDemo createState() => _FloatingActionButtonDemo();
}

class _FloatingActionButtonDemo extends State<FloatingActionButtonDemo> {
  var _color = randomColor();
  _onPressed() {
    setState(() {
      _color = randomColor();
      print(formatDate(DateTime(1992, 08, 08, 14), [yyyy, '年', mm, '月', dd, '日', hh, ':', nn, ':', ss, ' ', am, Z]));
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
