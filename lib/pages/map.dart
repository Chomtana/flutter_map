import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:track_my_stick/widgets/flutter_map_back_button.dart';
import 'package:track_my_stick/widgets/flutter_map_search_button.dart';
import 'package:track_my_stick/widgets/flutter_map_zoom_buttons.dart';

import '../widgets/flutter_map_detail.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final mapController = MapController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Container(
        child: FlutterMap(
          mapController: mapController,
          options:
              MapOptions(center: LatLng(13.7371947, 100.5280332), zoom: 16),
          nonRotatedChildren: const [
            FlutterMapZoomButtons(
              minZoom: 4,
              maxZoom: 19,
              mini: true,
              zoomInIcon: Icons.add,
              zoomOutIcon: Icons.remove,
            ),
            FlutterMapBackButton(),
            FlutterMapSearchButton(),
            FlutterMapDetail(),
          ],
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.track_my_stick',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  width: 40,
                  height: 40,
                  point: LatLng(13.7371947, 100.5280332),
                  builder: (ctx) => Image.asset("assets/images/marker.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
