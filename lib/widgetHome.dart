import 'package:flutter/material.dart';
import 'package:material/WidgetCustomItem.dart';

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
      color: Colors.yellow,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(4.0),
        childAspectRatio: 1.3,
        children: <Widget>[
          WidgetCustomItem("Text", Icons.text_format),
          WidgetCustomItem("TextField", Icons.text_fields),
          WidgetCustomItem("Radio", Icons.radio),
          WidgetCustomItem("Checkbox", Icons.check_box),
          WidgetCustomItem("Switch", Icons.switch_video),
        ],
      ),
    );
  }
}
