import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class RawMaterialButtonDemo extends StatefulWidget {
  @override
  _RawMaterialButtonDemo createState() => _RawMaterialButtonDemo();
}

class _RawMaterialButtonDemo extends State<RawMaterialButtonDemo> {
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
        title: Text(rawMaterialButtonDemoName),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 200),
        color: _color,
        child: Center(
          child: Column(
            children: <Widget>[
              RawMaterialButton(
                onPressed: _onPress,
                child: Text("默认样式"),
                fillColor: Colors.orange,
              )
            ],
          ),
        ),
      ),
    );
  }
}
