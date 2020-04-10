import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/widgets/buttons/buttonBarDemo.dart';
import 'package:material/widgets/buttons/dropdownButtonDemo.dart';

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

var buttonBarHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ButtonBarDemo();
});

var dropdownButtonHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return DropdownButtonDemo();
});