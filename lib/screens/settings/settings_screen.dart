import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsScreen extends StatelessWidget {
  final bool _toggleAirplaneMode = false;
  final bool _toggleBluetooth = false;
  final bool _toggleWiFi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(
        //  title: const Text('Settings'),
        //),
        body: Center(
            child: Column(
      children: [
        SwitchListTile(
          title: const Text('Airplane Mode'),
          secondary: const Icon(Icons.airplanemode_active),
          //onChanged: (value) {
          //setState(() {
          //_toggleAirplaneMode = value;
          //});
          //},
          value: _toggleAirplaneMode, onChanged: (bool value) {},
        ),
        const Divider(
          thickness: 1.2,
        ),
        SwitchListTile(
          title: const Text('Wi-Fi'),
          secondary: const Icon(Icons.wifi),
          //onChanged: (value) {
          //setState(() {
          //_toggleWiFi = value;
          //});
          //},
          value: _toggleWiFi, onChanged: (bool value) {},
        ),
        const Divider(
          thickness: 1.2,
        ),
        SwitchListTile(
          title: const Text('Bluetooth'),
          secondary: const Icon(Icons.bluetooth),
          //onChanged: (value) {
          //setState(() {
          //_toggleBluetooth = value;
          //});
          //},
          value: _toggleBluetooth, onChanged: (bool value) {},
        ),
      ],
    )) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
