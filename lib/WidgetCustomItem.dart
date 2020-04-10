import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:material/widgets/checkboxDemo.dart';
import 'package:material/widgets/radioDemo.dart';
import 'package:material/widgets/switchDemo.dart';
import 'package:material/widgets/textDemo.dart';
import 'package:material/widgets/textFieldDemo.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/routers/application.dart';
import 'routers/router.dart';

class WidgetCustomItem extends StatefulWidget {
  var name = "";
  final IconData icon;

  WidgetCustomItem(this.name, this.icon);

  @override
  _WidgetCustomItem createState() => _WidgetCustomItem(name, icon);
}

class _WidgetCustomItem extends State<WidgetCustomItem> {
  var name = "";
  final IconData icon;

  _WidgetCustomItem(this.name, this.icon);

  _onPressed() {
    switch (name) {
      case textDemoName:
        {
          Application.router.navigateTo(context, BPRouter.textDemo,
              transition: TransitionType.inFromBottom);
        }
        break;
      case textFieldDemoName:
        {
          Application.router.navigateTo(context, BPRouter.textFieldDemo,
              transition: TransitionType.fadeIn);
        }
        break;
      case checkboxDemoName:
        {
          Application.router.navigateTo(context, BPRouter.checkboxDemo);
        }
        break;
      case switchDemoName:
        {
          Application.router.navigateTo(context, BPRouter.swtichDemo);
        }
        break;
      case radioDemoName:
        {
          Application.router.navigateTo(context, BPRouter.radioDemo);
        }
        break;
      case buttonBarDemoName:
        {
          Application.router.navigateTo(context, BPRouter.buttonBarDemo);
        }
        break;
      case dropdownButtonDemoName:
        {
          Application.router.navigateTo(context, BPRouter.dropdownButtonDemo);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onPressed,
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          color: Colors.lightBlue[800],
          child: Center(
            child: Column(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
