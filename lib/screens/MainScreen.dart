import 'package:flutter/material.dart';
import 'package:my_garden/screens/GardenersScreen.dart';
import 'package:my_garden/screens/HomeScreen.dart';
import 'package:my_garden/screens/SettingsScreen.dart';

class MainScreen extends StatefulWidget {
  MainScreen();

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Type type = HomeScreen().runtimeType;
  int _currentIndex = 0;
  final List<dynamic> _screens = [
    HomeScreen(),
    GardenersScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      appBar: AppBar(
        backgroundColor: themeData.colorScheme.background,
        centerTitle: true,
        elevation: 0,
        title: Text(
          _screens[_currentIndex].title,
          style: TextStyle(
              color: themeData.colorScheme.secondary,
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: _buildBottomNavigationBarItems(),
        selectedItemColor: themeData.colorScheme.secondary,
        backgroundColor: themeData.colorScheme.background,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Gardeners"),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
    ];
  }
}
