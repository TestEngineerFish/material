import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RadioDemo();
}

class _RadioDemo extends State<RadioDemo> {

  bool _switchSelected = true;
  bool _checkboxSelected0 = false;
  bool _checkboxSelected1 = true;
  onChange(value) {
    this.setState((){
      groupValue = value;
    });
  }
  int groupValue = 0;
  
  @override
  Widget build(BuildContext context) {
    final Column column = Column(
      children: <Widget>[
        Radio(value: 1, groupValue: groupValue, activeColor: Colors.orange, onChanged: (T) {
          onChange(T);
        }),
        Radio(value: 2, groupValue: groupValue, onChanged: (T) {
          onChange(T);
        }),
        Radio(value: 3, groupValue: groupValue, activeColor: Colors.red, onChanged: (T) {
          onChange(T);
        }),
        Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                print("Switch: $_switchSelected");
                _switchSelected = value;
              });
            }),
        Checkbox(
            value: _checkboxSelected0,
            activeColor: Colors.orange,
            onChanged: (value) {
              setState(() {
                print("Checkbox: $value");
                _checkboxSelected0 = value;
              });
            }),
        Checkbox(value: _checkboxSelected1, activeColor: Colors.orange, onChanged: (value) {
          setState(() {
            _checkboxSelected1 = value;
          });
        })
      ],
    );

    return Center(child: column,);
  }
}
