import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:material/widgets/index.dart';
import 'package:material/routers/routerHandler.dart';

class BPRouter {
  static String home = "/home";
  static String textDemo = "/text";
  static String textFieldDemo = "/textField";
  static String radioDemo = "/radio";
  static String checkboxDemo = "/checkbox";
  static String swtichDemo = "/switch";
  static String buttonBarDemo = "/buttonBar";
  static String dropdownButtonDemo = "/dropdownButton";

  static void configureRoutes(Router router) {
    router.define(home, handler: homeHandler);
    router.define(textDemo, handler: textHandler);
    router.define(textFieldDemo, handler: textFieldHandler);
    router.define(radioDemo, handler: radioHandler);
    router.define(checkboxDemo, handler: checkboxHandler);
    router.define(swtichDemo, handler: switchHandler);
    router.define(buttonBarDemo, handler: buttonBarHandler);
    router.define(dropdownButtonDemo, handler: dropdownButtonHandler);

    //    List widgetDemoList = WidgetDemoList().getDemos();
  }
}