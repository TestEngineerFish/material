import 'package:flutter/material.dart';
import 'package:material/Demo/checkboxDemo.dart';
import 'package:material/Demo/radioDemo.dart';
import 'package:material/Demo/switchDemo.dart';
import 'package:material/Demo/textDemo.dart';
import 'package:material/Demo/textFieldDemo.dart';

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
    print(name);
//    Navigator.of(context).push(MaterialPageRoute(builder: (context){
//      return TextDemo();
//    }));
    switch (name) {
      case "Text":
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TextDemo();
          }));
        }
        break;
      case "TextField":
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TextFieldDemo();
          }));
        }
        break;
      case "Checkbox":
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CheckboxDemo();
          }));
        }
        break;
      case "Switch":
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SwitchDemo();
          }));
        }
        break;
      case "Radio":
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RadioDemo();
          }));
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
