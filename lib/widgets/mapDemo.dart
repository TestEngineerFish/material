import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:material/resources/bpString.dart';
import 'package:latlng/latlng.dart';

class MapDemo extends StatefulWidget {
  @override
  _MapDemo createState() => _MapDemo();
}

class _MapDemo extends State<MapDemo> {
  final controller = MapController(location: LatLng(35.68, 51.41));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(mapDemoName),
      ),
      body: Map(controller: controller),
    );
  }
}
