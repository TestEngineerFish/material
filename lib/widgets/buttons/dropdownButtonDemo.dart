import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class DropdownButtonDemo extends StatefulWidget {
  @override
  _DropdownButtonDemo createState() => _DropdownButtonDemo();
}

class _DropdownButtonDemo extends State<DropdownButtonDemo> {
  var selectedValue;
  var selectedItemView;
  var bgColor = Colors.white;

  List<DropdownMenuItem> generateItemList() {
    List<DropdownMenuItem> itemList = List();
    final DropdownMenuItem itemWite = DropdownMenuItem(
      value: Colors.white,
      child: Text("白色"),
    );
    final DropdownMenuItem itemYellow = DropdownMenuItem(
      value: Colors.yellow,
      child: Text("黄色"),
    );
    final DropdownMenuItem itemBlue = DropdownMenuItem(
      value: Colors.blue,
      child: Text("蓝色"),
    );
    final DropdownMenuItem itemRed = DropdownMenuItem(
      value: Colors.red,
      child: Text("红色"),
    );
    final DropdownMenuItem itemBlack = DropdownMenuItem(
      value: Colors.black,
      child: Text("黑色"),
    );
    final DropdownMenuItem itemgreen = DropdownMenuItem(
      value: Colors.green,
      child: Text("绿色"),
    );
    final DropdownMenuItem itemGrey = DropdownMenuItem(
      value: Colors.grey,
      child: Text("灰色"),
    );
    final DropdownMenuItem itemPurple = DropdownMenuItem(
      value: Colors.purple,
      child: Text("紫色"),
    );
    itemList.add(itemWite);
    itemList.add(itemYellow);
    itemList.add(itemBlue);
    itemList.add(itemRed);
    itemList.add(itemBlack);
    itemList.add(itemgreen);
    itemList.add(itemGrey);
    itemList.add(itemPurple);
    return itemList;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(dropdownButtonDemoName),
        ),
        backgroundColor: bgColor,
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 300, 0, 0),
          height: 60,
          color: randomColor(),
          child: DropdownButton(
            hint: Text("下拉选择颜色"),
            value: selectedValue,
            items: this.generateItemList(),
            elevation: 2, // 阴影高度
            style: TextStyle(color: Colors.blueAccent), // 设置选项文字样式
//            isDense: true,
            isExpanded: true, // 水平填充与父级一致
            iconSize: 40, // 设置角标大小
            onChanged: (T) {
              setState(() {
                this.bgColor = T;
                this.selectedValue = T;
              });
            },
          ),
        ));
  }
}
