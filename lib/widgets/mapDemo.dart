import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:material/resources/bpString.dart';
import 'package:latlng/latlng.dart';

class CountContainer extends InheritedWidget {
  static CountContainer of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType() as CountContainer;

  final int count;

  CountContainer({
    Key key,
    @required this.count,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountContainer state = CountContainer.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("传值测试")),
      body: Text("当前计数：${state.count}"),
    );
  }
}

class MapDemo extends StatefulWidget {
  @override
  _MapDemo createState() => _MapDemo();
}

class _MapDemo extends State<MapDemo> {
  final controller = MapController(location: LatLng(35.68, 51.41));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return CountContainer(count: 10, child: Counter());
    return Scaffold(
      appBar: AppBar(
        title: Text(mapDemoName),
      ),
      body: Map(controller: controller),
    );
  }
}
