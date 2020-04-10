import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemo createState() => _CheckboxDemo();
}

class _CheckboxDemo extends State<CheckboxDemo> {
  bool _checkboxSelected0 = false;
  bool _checkboxSelected1 = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Demo"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Checkbox(
                value: _checkboxSelected0,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    print("Checkbox: $value");
                    _checkboxSelected0 = value;
                  });
                }),
            Checkbox(
                value: _checkboxSelected1,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    _checkboxSelected1 = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
