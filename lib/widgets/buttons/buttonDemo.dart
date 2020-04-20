import 'package:flutter/material.dart';
import 'package:material/WidgetCustomItem.dart';
import 'package:material/resources/bpString.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Demo"),
      ),
      body: Container(
        height: 800,
        color: Colors.greenAccent,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 4,
          padding: const EdgeInsets.all(5.0),
          childAspectRatio: 1.3,
          children: <Widget>[
            WidgetCustomItem(buttonBarDemoName, Icons.radio_button_checked),
            WidgetCustomItem(dropdownButtonDemoName, Icons.arrow_drop_down),
            WidgetCustomItem(flatButtonDemoName, Icons.radio_button_checked),
            WidgetCustomItem(floatingActionButtonDemoName, Icons.radio_button_checked),
            WidgetCustomItem(iconButtonDemoName, Icons.radio_button_checked),
            WidgetCustomItem(outlineButtonDemoName, Icons.radio_button_checked),
          ],
        ),
      ),
    );
  }
}
