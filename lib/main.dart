import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material/resources/macro.dart';
import 'package:material/routers/application.dart';
import 'package:material/widgetHome.dart';
import 'routers/router.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  MyApp() {
    // 配置路由
    final router = Router();
    BPRouter.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: debugDefaultTargetPlatformOverride == TargetPlatform.iOS ? kIOSTheme : kAndroidTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WidgetHome(),
    );
  }
}
