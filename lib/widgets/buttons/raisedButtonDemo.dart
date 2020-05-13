import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class RaisedButtonDemo extends StatefulWidget {
  @override
  _RaisedButtonDemo createState() => _RaisedButtonDemo();
}

class _RaisedButtonDemo extends State<RaisedButtonDemo> {
  var _color = randomColor();
  _onPress() {
    setState(() {
      _color = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(raisedButtonDemoName),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 200),
        color: _color,
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(onPressed: _onPress,child: Text("默认样式"),)
            ],
          ),
        ),
      ),
    );
  }
}
