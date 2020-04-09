import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {
  @override
  _TextDemo createState() {
    // TODO: implement createState
    return _TextDemo();
  }
}

class _TextDemo extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(15),
      children: <Widget>[
        Text("文本0" + '\n'),
        Text("最多显示一行" * 18 + '\n', maxLines: 1),
        Text("2倍大小显示" + '\n', textScaleFactor: 2,),
        Text("截断方式：最后显示省略号" * 10 + '\n', overflow: TextOverflow.ellipsis, maxLines: 2,),
        Text("截断方式：底部阴影渐变" * 10 + '\n', overflow: TextOverflow.fade, maxLines: 1, textScaleFactor: 4,),
        Text("文字左对齐" * 10 + '\n', textAlign: TextAlign.left,),
        Text("文字居中" * 10 + '\n', softWrap: true, textAlign: TextAlign.center,),
        Text("字体大小QRS" + '\n', style: TextStyle(
            fontSize: 26,
            fontFamily: "Schyler",
        ),),
        Text("背景颜色", style: TextStyle(backgroundColor: Colors.yellow),),
        Text("字体颜色" + '\n', style: TextStyle(
            color: Colors.orange
        ),),
        Text("字体阴影", style: TextStyle(
            shadows: [Shadow(color: Colors.red,offset: Offset(2, 2), blurRadius: 5.0)]
        ), textScaleFactor: 3,),
        Text("显示下划线", style: TextStyle(
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed
        ), textScaleFactor: 2,),
        Text("背景设置"),
        Text("设置高宽", softWrap: true, style: TextStyle(
          height: 2,// fontSize * height
        ),),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "Home:"),
              TextSpan(text: "https://www.qpgjk.com", style: TextStyle(
                color: Colors.blue
              ))
            ]
          ),
        ),
        Text.rich(TextSpan(
          style: TextStyle(
            color: Colors.orange,
            backgroundColor: Colors.white10
          ),
          children: [
            TextSpan(
              text: "继承Style",
              style: TextStyle(
                inherit: true,
                color: Colors.blue
              ),
            ),
            TextSpan(
              text: "不继承Style",
              style: TextStyle(
                inherit: false,
                color: Colors.black
              ),
            )
          ]
        )),
      ],
    );
    return Column(
      children: <Widget>[

      ],
    );
  }
}