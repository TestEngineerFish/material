import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RadioDemo();
}

class _RadioDemo extends State<RadioDemo> {
  onChange(value) {
    this.setState(() {
      groupValue = value;
    });
  }

  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    final Column column = Column(
      children: <Widget>[
        Radio(
            value: 1,
            groupValue: groupValue,
            activeColor: Colors.orange,
            onChanged: (T) {
              onChange(T);
            }),
        Radio(
            value: 2,
            groupValue: groupValue,
            onChanged: (T) {
              onChange(T);
            }),
        Radio(
            value: 3,
            groupValue: groupValue,
            activeColor: Colors.red,
            onChanged: (T) {
              onChange(T);
            }),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Demo"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[Center(child: column)],
        ),
      ),
    );
  }
}
