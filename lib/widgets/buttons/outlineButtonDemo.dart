import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class OutlineButtonDemo extends StatefulWidget {
  @override
  _OutlineButtonDemo createState() => _OutlineButtonDemo();
}

class _OutlineButtonDemo extends State<OutlineButtonDemo> {
  var _color = randomColor();
  var buttonColor = randomColor();
  _onPress() {
    setState(() {
      _color = randomColor();
      buttonColor = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(outlineButtonDemoName),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 200),
        color: _color,
        child: Center(
          child: Column(
            children: <Widget>[
              OutlineButton(
                  child: Text(
                    "默认样式",
                    semanticsLabel: "hhh",
                  ),
                  onPressed: _onPress,
                  highlightColor: buttonColor),
              OutlineButton(
                child: Text("边框样式"),
                borderSide: BorderSide(color: randomColor()),
                textColor: Colors.white,
                onPressed: _onPress,
                textTheme: ButtonTextTheme.primary,
                clipBehavior: ShapeBorde
              ),
            ],
          ),
        ),
      ),
    );
  }
}
