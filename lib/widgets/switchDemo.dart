import 'package:flutter/material.dart';
import 'package:material/resources/macro.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemo createState() => _SwitchDemo();
}

class _SwitchDemo extends State<SwitchDemo> {
  bool _switchSelected = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Switch Demo"),
        ),
        backgroundColor: randomColor(),
        body: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              children: <Widget>[
                Switch(
                    value: _switchSelected,
                    onChanged: (value) {
                      setState(() {
                        print("Switch: $_switchSelected");
                        _switchSelected = value;
                      });
                    }),
              ],
            ),
          ),
        ));
  }
}
