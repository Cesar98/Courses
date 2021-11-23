import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

final MAPBOX_ACCESS_TOKEN =
    "pk.eyJ1IjoiY3VhcmN1YXIiLCJhIjoiY2theXFzbHIyMGt6aDJ5bWg0MGd1ZHF0biJ9.E-iL_pNcCtK9K6yMzIvOhA";
final MAPBOX_STYLE = 'cuarcuar/ckwbacnoi3t7814mrxy4qnf4r';
final MAPBOX_STYLE_2 = 'cuarcuar/ckwbcbi4x2bgm14qkdm8uae6h';

String selected_style = MAPBOX_STYLE;
double specific_zoom = 13;

final location = LatLng(19.257595699862435, -99.57781415998956);

class FullMapPage extends StatefulWidget {
  @override
  State<FullMapPage> createState() => _FullMapPageState();
}

class _FullMapPageState extends State<FullMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10),
          FloatingActionButton(
            child: Icon(Icons.rotate_left_rounded),
            backgroundColor: Colors.black,
            onPressed: () => setState(() => selected_style =
                selected_style == MAPBOX_STYLE ? MAPBOX_STYLE_2 : MAPBOX_STYLE),
          ),
        ],
      ),
      body: FlutterMap(
        options: MapOptions(
          minZoom: 5,
          maxZoom: 16,
          center: location,
          zoom: specific_zoom,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
              additionalOptions: {
                'accessToken': MAPBOX_ACCESS_TOKEN,
                'id': selected_style
              })
        ],
      ),
    );
  }
}
