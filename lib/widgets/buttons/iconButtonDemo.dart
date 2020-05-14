import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class IconButtonDemo extends StatefulWidget {
  @override
  _IconButtonDemo createState() => _IconButtonDemo();
}

class _IconButtonDemo extends State<IconButtonDemo> {
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
          title: Text(iconButtonDemoName),
        ),
        backgroundColor: _color,
        body: Container(
          margin: const EdgeInsets.only(top: 200),
          child: Center(
              child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                hoverColor: Colors.red,
                splashColor: Colors.black,
                onPressed: _onPressed,
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.volume_up),
                  iconSize: 50,
                  alignment: AlignmentDirectional.bottomEnd,
                  disabledColor: Colors.black, // 如果没有实现 onPress。默认disabel状态
                  highlightColor: Colors.yellow,
                  onPressed: _onPressed,
                ),
                width: 150,
                height: 100,
              ), // 必须按钮的父控件大于按钮，这个属性才生效
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 40,
                color: Colors.orange,
                onPressed: _onPressed,
                highlightColor: Colors.white.withAlpha(100),
                splashColor: Colors.red, // 背景色会遮住飞溅效果
              ),
              IconButton(
                icon: Icon(Icons.router),
                iconSize: 50,
                color: randomColor(),
                onPressed: _onPressed,
                padding: const EdgeInsets.only(left: 80), // 设置后同样会增宽右边的距离
                tooltip: "Hello", // 长按显示的提示信息
              ),
            ],
          )),
        ));
  }
}
