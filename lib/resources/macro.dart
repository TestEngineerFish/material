import 'package:flutter/material.dart';

import 'dart:math';

Color randomColor() {
  final randomRed   = Random().nextInt(255);
  final randomGreen = Random().nextInt(255);
  final randomBlue  = Random().nextInt(255);
  return Color.fromARGB(255, randomRed, randomGreen, randomBlue);
}

final ThemeData kIOSTheme = ThemeData(
  brightness: Brightness.light, // 主题样式
  accentColor: Colors.white, // （按钮）Widget前景色
  primaryColor: Colors.orange, // 主题色
  iconTheme: IconThemeData(color: Colors.blue),
  textTheme: TextTheme(body1: TextStyle(color: Colors.black)),

);

final ThemeData kAndroidTheme = ThemeData(
  brightness: Brightness.dark, // 主题样式
  accentColor: Colors.grey, // （按钮）Widget前景色
  primaryColor: Colors.blue, // 主题色
  iconTheme: IconThemeData(color: Colors.orange),
  textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
);