import 'package:flutter/material.dart';
import 'package:material/resources/bpString.dart';

class ButtonBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _onPressButton() {
      print(this.hashCode);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(buttonBarDemoName),
        ),
        backgroundColor: Colors.yellow[100],
        body: Container(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Text("左对齐"),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("0"),
                      color: Colors.red,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("1"),
                      color: Colors.yellow,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                        child: Text("2"),
                        color: Colors.blue,
                        onPressed: () => {})
                  ],
                ),
                Text("居中对齐"),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("3"),
                      color: Colors.green,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("4"),
                      color: Colors.white,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("5"),
                      color: Colors.lightBlue,
                      onPressed: _onPressButton,
                    )
                  ],
                ),
                Text("右对齐"),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("3"),
                      color: Colors.green,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("4"),
                      color: Colors.white,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("5"),
                      color: Colors.lightBlue,
                      onPressed: _onPressButton,
                    )
                  ],
                ),
                Text("两端对齐"),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("3"),
                      color: Colors.green,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("4"),
                      color: Colors.white,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("5"),
                      color: Colors.lightBlue,
                      onPressed: _onPressButton,
                    )
                  ],
                ),
                Text("按钮间等宽，居中对齐"),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("3"),
                      color: Colors.green,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("4"),
                      color: Colors.white,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("5"),
                      color: Colors.lightBlue,
                      onPressed: _onPressButton,
                    )
                  ],
                ),
                Text("间距等宽，居中对齐"),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("3"),
                      color: Colors.green,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("4"),
                      color: Colors.white,
                      onPressed: _onPressButton,
                    ),
                    RaisedButton(
                      child: Text("5"),
                      color: Colors.lightBlue,
                      onPressed: _onPressButton,
                    )
                  ],
                )
              ]
            ),
        ));
  }
}
