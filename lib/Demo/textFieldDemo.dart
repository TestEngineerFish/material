import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemo createState() => _TextFieldDemo();
}

class _TextFieldDemo extends State<TextFieldDemo> {
  _textFieldChange(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("TextField Demo"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(40),
                child: TextField(),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    icon: Icon(Icons.phone),
                    labelText: "手机号",
                    hintText: "默认文案",
                    helperText: "输入手机号不知道吗？",
                    labelStyle: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black12,
                        fontSize: 16),
                  ),
                  onChanged: _textFieldChange,
                  autofocus: true,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 30, top: 10, right: 30),
                    errorText: "错误警告",
                    errorMaxLines: 1,
                  ),
                  controller: TextEditingController(text: "Controller"),
                ),
              ),
            ],
          ),
        ));
  }
}
