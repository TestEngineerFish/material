import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class FlatButtonDemo extends StatefulWidget {
  @override
  _FlatButtonDemo createState() => _FlatButtonDemo();
}

class _FlatButtonDemo extends State<FlatButtonDemo> {
  var _color = randomColor();

  _onPressed() {
    setState(() {
      _color = randomColor();
    });
  }

  _onChangeHightState(isClick) {
    isClick ? print("按下按钮") : print("松开按钮");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(flatButtonDemoName),
      ),
      body: Center(
        child: Column(children: <Widget>[
          FlatButton(
            onPressed: _onPressed,
            child: Text(flatButtonDemoName),
          ),
          FlatButton.icon(
            onPressed: _onPressed,
            icon: Icon(Icons.radio_button_checked),
            label: Text("有Icon"),
            color: Colors.white,
          ),
          FlatButton(
            child: Text("自定义属性"),
            color: Colors.orange,
            onPressed: _onPressed,
            textColor: Colors.white,
            colorBrightness: Brightness
                .dark, // 按钮亮度，如果没有自定义textColor颜色，则根据亮度会修改文字颜色，dark => white, light => black
            highlightColor: Colors.yellow, // 按下是的高亮颜色
            disabledColor: Colors.grey, // 按钮Disable时，按钮背景颜色
            disabledTextColor: Colors.grey, // 按钮Disable时，按钮文字颜色
            splashColor: Colors.red, // 墨汁飞溅效果
          ),
          FlatButton(
            textTheme: ButtonTextTheme.accent,
            child: Text("主题[accent]按钮"),
            onPressed: _onPressed,
          ),
          FlatButton(
            textTheme: ButtonTextTheme.normal,
            child: Text("主题[normal]按钮"),
            onPressed: _onPressed,
          ),
          FlatButton(
            textTheme: ButtonTextTheme.primary,
            child: Text("主题[primary]按钮"),
            onPressed: _onPressed,
            splashColor: Colors.yellow,
          ),
          FlatButton(
            child: Text("边框样式"),
            clipBehavior: Clip.antiAlias,
            shape: Border.all(
              color: Colors.red,
              width: 3,
              style: BorderStyle.solid,
            ),
            padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
            onHighlightChanged: _onChangeHightState, // 前提是实现了OnPressed函数
            onPressed: _onPressed,
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: Material(
              child: FlatButton(
                child: Text("带圆角的按钮"),
                onPressed: _onPressed,
                clipBehavior: Clip.hardEdge, //抗锯齿选项
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          Material(
            child: FlatButton(
              child: Text("带阴影的按钮"),
              onPressed: _onPressed,
              padding: const EdgeInsets.all(0),
            ),
            shadowColor: Colors.black,
            elevation: 10,
          ),
        ]),
      ),
      backgroundColor: _color,
    );
  }
}
