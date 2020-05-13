import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemo createState() => _PopupMenuButtonDemo();
}

enum ColorType {
    black,
    yello,
    blue,
}

class _PopupMenuButtonDemo extends State<PopupMenuButtonDemo> {
  var _color = randomColor();
  var _title = "默认样式";

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
        title: Text(popupMenuButtonDemoName),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 200),
          color: _color,
          child: Center(
            child: Column(
              children: <Widget>[
                PopupMenuButton(
                    child: Text(_title),
                    onSelected: (ColorType result) {
                      _onPress();
                      setState(() {
                        _title = result.toString();
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<ColorType>>[
                          const PopupMenuItem<ColorType>(child: Text("选项一"), value: ColorType.black,),
                          const PopupMenuItem<ColorType>(child: Text("选项二"), value: ColorType.blue,),
                          const PopupMenuItem<ColorType>(child: Text("选项三"), value: ColorType.yello,),
                        ]),
              ],
            ),
          )),
    );
  }
}
