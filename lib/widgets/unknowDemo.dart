import 'package:flutter/material.dart';

class UnknowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("UnknowDemo"),
      ),
      body: Container(
        child: Text(
          "404",
          style: TextStyle(color: Colors.blueGrey, fontSize: 40),
        ),
        padding: EdgeInsets.fromLTRB(100, 300, 100, 500),
      ),
    );
  }
}
