import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';
import 'package:material/resources/macro.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemo createState() => _ListViewDemo();
}

class _ListViewDemo extends State<ListViewDemo> {
  var _color = randomColor();

  _onPress() {
    setState(() {
      _color = randomColor();
    });
  }

  _longPress() {
    setState(() {
      _color = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(listViewDemoName),
        ),
        body: Container(child:
            ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image(
              height: 80,
              width: 80,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1309977140,1543915475&fm=26&gp=0.jpg"),
            ),
            title: Text("姓名：三灰$index"),
            subtitle: Text("描述：矮小de"),
            trailing: Text("🇨🇳"),
            isThreeLine: true,
            dense: true,
            enabled: index % 2 != 1,
            onTap: _onPress,
            onLongPress: _longPress,
            selected: index % 2 != 1,
          );
          return Container(
              height: 100,
              color: randomColor(),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image(
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1309977140,1543915475&fm=26&gp=0.jpg"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("姓名：三灰$index"),
                        Text("描述：矮小"),
                      ],
                    ),
                  )
                ],
              ));
        })));
  }
}
