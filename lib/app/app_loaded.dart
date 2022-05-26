import 'package:app_prototipo_bioline/screens/home/home_screen.dart';
import 'package:app_prototipo_bioline/screens/settings/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoadedApp extends StatefulWidget {
  const LoadedApp({Key? key}) : super(key: key);

  @override
  _LoadedAppState createState() => _LoadedAppState();
}

class _LoadedAppState extends State<LoadedApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    //FincasScreen(),
    Text(
      'Index 0: Fincas',
      style: optionStyle,
    ),
    //CultivosScreen(),
    Text(
      'Index 1: Cultivos',
      style: optionStyle,
    ),
    HomeScreen(),
    //TiendaScreen(),
    Text(
      'Index 3: Tienda',
      style: optionStyle,
    ),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIOAPP (^`3^)'),
      ),
      /////////////////////////////////////////
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Fincas',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco),
            label: 'Cultivos',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Tienda',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.blueAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
