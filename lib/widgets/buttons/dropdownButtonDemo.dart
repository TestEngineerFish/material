import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';

class DropdownButtonDemo extends StatelessWidget {

  List<DropdownMenuItem> itemList = List();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text(dropdownButtonDemoName),), body: DropdownButton(),);
  }
}