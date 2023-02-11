import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
