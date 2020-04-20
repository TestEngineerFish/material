import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/widgets/buttons/buttonBarDemo.dart';
import 'package:material/widgets/buttons/buttonDemo.dart';
import 'package:material/widgets/buttons/dropdownButtonDemo.dart';
import 'package:material/widgets/buttons/flatButtonDemo.dart';
import 'package:material/widgets/buttons/floatingActionButtonDemo.dart';
import 'package:material/widgets/buttons/iconButtonDemo.dart';
import 'package:material/widgets/buttons/outlineButtonDemo.dart';
import 'package:material/widgets/buttons/popupMenuButtonDemo.dart';

import 'package:material/widgets/checkboxDemo.dart';
import 'package:material/widgets/radioDemo.dart';
import 'package:material/widgets/switchDemo.dart';
import 'package:material/widgets/textDemo.dart';
import 'package:material/widgets/textFieldDemo.dart';
import 'package:material/widgetHome.dart';

var homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return WidgetHome();
});

var textHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return TextDemo();
});

var textFieldHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return TextFieldDemo();
});

var radioHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RadioDemo();
});

var checkboxHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return CheckboxDemo();
});

var switchHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SwitchDemo();
});

var buttonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ButtonDemo();
});

var buttonBarHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ButtonBarDemo();
});

var dropdownButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return DropdownButtonDemo();
});

var flatButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return FlatButtonDemo();
});

var floatingActionButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return FloatingActionButtonDemo();
});

var iconButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return IconButtonDemo();
});

var outlineButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return OutlineButtonDemo();
});

var popupMenuButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PopupMenuButtonDemo();
});

