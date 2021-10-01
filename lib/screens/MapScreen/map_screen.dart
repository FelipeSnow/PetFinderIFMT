import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(1, 1),
              ),
            ),
            _appBar(context, ""),
          ],
        ),
      ),
    );
  }

  Positioned _appBar(BuildContext context, String greetings) {
    return Positioned(
      top: 0.0,
      right: 0.0,
      left: 0.0,
      child: AppBar(
        title: Text(
          greetings,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
