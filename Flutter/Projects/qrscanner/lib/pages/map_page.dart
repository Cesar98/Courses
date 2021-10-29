import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:qrscanner/models/scan_model.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final ScanModel scan =
        ModalRoute.of(context)!.settings.arguments as ScanModel;

    final CameraPosition initialPoint = CameraPosition(
        target: scan.getLatLng(), zoom: 17, tilt: 50, bearing: 90);

    Set<Marker> markers = new Set<Marker>();

    markers.add(new Marker(
        markerId: MarkerId('Central-point'), position: scan.getLatLng()));

    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: markers,
        initialCameraPosition: initialPoint,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.location_on),
          onPressed: () {
            _goToCentralPoint(scan.getLatLng());
          }),
    );
  }

  Future<void> _goToCentralPoint(LatLng latlang) async {
    final CameraPosition position =
        CameraPosition(target: latlang, zoom: 17, tilt: 50, bearing: 90);

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(position));
  }
}
