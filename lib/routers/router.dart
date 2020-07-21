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
  static String buttonDemo = "/button";
  static String buttonBarDemo = "/buttonBar";
  static String dropdownButtonDemo = "/dropdownButton";
  static String flatButtonDemo = "/flatButton";
  static String floatingActionButtonDemo = "/floatingActionButton";
  static String iconButtonDemo = "/iconButton";
  static String outlineButtonDemo = "/outlineButon";
  static String popupMenuButtonDemo = "/popupMenuBUtton";
  static String raisedButtonDemo = "/raisedButtonDemo";
  static String rawMaterialButtonDemo = "/rawMaterialBUttonDemo";
  static String listViewDemo = "/listView";
  static String mapDemo = "/map";
  static String listennerDemo = "/listenner";
  static String unknowDemo = "/unknow";

  static void configureRoutes(Router router) {
    router.define(home, handler: homeHandler);
    router.define(textDemo, handler: textHandler);
    router.define(textFieldDemo, handler: textFieldHandler);
    router.define(radioDemo, handler: radioHandler);
    router.define(checkboxDemo, handler: checkboxHandler);
    router.define(swtichDemo, handler: switchHandler);
    router.define(buttonDemo, handler: buttonHandler);
    router.define(buttonBarDemo, handler: buttonBarHandler);
    router.define(dropdownButtonDemo, handler: dropdownButtonHandler);
    router.define(flatButtonDemo, handler: flatButtonHandler);
    router.define(floatingActionButtonDemo, handler: floatingActionButtonHandler);
    router.define(iconButtonDemo, handler: iconButtonHandler);
    router.define(outlineButtonDemo, handler: outlineButtonHandler);
    router.define(popupMenuButtonDemo, handler: popupMenuButtonHandler);
    router.define(raisedButtonDemo, handler: raisedButtonHandler);
    router.define(rawMaterialButtonDemo, handler: rawMaterialButtonHandler);
    router.define(listViewDemo, handler: listViewHandler);
    router.define(mapDemo, handler: mapHandle);
    router.define(listennerDemo, handler: listennerHandle);
    router.define(unknowDemo, handler: unknowHandle);
    //    List widgetDemoList = WidgetDemoList().getDemos();
  }
}