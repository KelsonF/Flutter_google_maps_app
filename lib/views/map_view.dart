import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key, required title});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-5.088829908327693, -42.81126191734898);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 18.0,
      ),
      markers: {
        Marker(
            markerId: MarkerId("01"),
            position: LatLng(-5.088829908327693, -42.81126191734898)),
        Marker(
            markerId: MarkerId("02"),
            position: LatLng(-5.089173899604499, -42.8110589215193)),
        Marker(
            markerId: MarkerId("03"),
            position: LatLng(-5.096066383309883, -42.791736772339))
      },
    );
  }
}
