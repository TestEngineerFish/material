import 'package:flutter/material.dart';

import 'dart:math';

Color randomColor() {
  final randomRed = Random().nextInt(255);
  final randomGreen = Random().nextInt(255);
  final randomBlue = Random().nextInt(255);
  return Color.fromARGB(255, randomRed, randomGreen, randomBlue);
}