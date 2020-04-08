import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {

}

class _Demo extends State<RadioDemo> {
  int groupValue = 1;
  onChange(val) {
    this.setState((){
      groupValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return Container(
//      alignment: Alignment.centerLeft,
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        main
//      ),
//    );
  }
}