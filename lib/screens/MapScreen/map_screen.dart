import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:app/services/geolocation_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            title: const Text(
              "Olá, usuário\n Encontramos seu PET",
            ),
          ),
          const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(1, 1),
            ),
          )
        ],
      ),
    );
  }
}
