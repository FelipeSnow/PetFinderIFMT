import 'package:app/screens/MapScreen/map_screen.dart';
// import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(primary: Colors.green),
      ),
      home: const MapScreen(),
    );
  }
}
