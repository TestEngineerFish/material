import 'package:flutter/material.dart';
import 'package:material/WidgetCustomItem.dart';
import 'package:material/resources/bpString.dart';

class WidgetHome extends StatefulWidget {
  @override
  _WidgetHome createState() => _WidgetHome();
}

class _WidgetHome extends State<WidgetHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 800,
      color: Theme.of(context).primaryColor,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(5.0),
        childAspectRatio: 1.3,
        children: <Widget>[
          WidgetCustomItem(textDemoName, Icons.text_format),
          WidgetCustomItem(textFieldDemoName, Icons.text_fields),
          WidgetCustomItem(radioDemoName, Icons.radio),
          WidgetCustomItem(checkboxDemoName, Icons.check_box),
          WidgetCustomItem(switchDemoName, Icons.switch_video),
          WidgetCustomItem(buttonDemoName, Icons.radio_button_checked),
          WidgetCustomItem(listViewDemoName, Icons.list),
        ],
      ),
    );
  }
}
