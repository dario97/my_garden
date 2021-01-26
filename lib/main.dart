import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_garden/screens/GardenScreen.dart';
import 'package:my_garden/screens/MainScreen.dart';

void main() {
  runApp(GardenApp());
}

class GardenApp extends StatefulWidget {
  @override
  _GardenAppState createState() => _GardenAppState();
}

class _GardenAppState extends State<GardenApp> {
  String _currentScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme(
            primary: Color(0xff59B165),
            primaryVariant: Colors.red,
            secondary: Color(0xff59B165),
            secondaryVariant: Colors.red,
            surface: Color(0xffF3FAFB),
            background: Colors.white,
            error: Colors.red,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.red,
            onBackground: Color(0xff182715),
            onError: Colors.red,
            brightness: Brightness.light),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigator(
        pages: [
          MaterialPage(child: GardenScreen(), key: ValueKey("main")),
          if (_currentScreen != null) MaterialPage(child: GardenScreen())
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
