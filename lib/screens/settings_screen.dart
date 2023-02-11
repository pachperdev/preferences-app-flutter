import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool isDarkMode = false;
  late int gender = 1;
  late String name = 'Mauro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 35, color: Colors.black54),
            ),
            const Divider(),
            SwitchListTile.adaptive(
              value: isDarkMode,
              title: const Text('Darkmode'),
              onChanged: (value) {
                isDarkMode = value;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile(
              value: 1,
              groupValue: gender,
              title: const Text('Masculino'),
              onChanged: (value) {
                gender = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: gender,
              title: const Text('Femenino'),
              onChanged: (value) {
                gender = value ?? 2;
                setState(() {});
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Mauricio',
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
