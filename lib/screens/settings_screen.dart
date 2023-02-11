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
              value: true,
              title: const Text('Darkmode'),
              onChanged: (value) {},
            ),
            const Divider(),
            RadioListTile(
              value: 1,
              groupValue: 1,
              title: const Text('Masculino'),
              onChanged: (value) {},
            ),
            const Divider(),
            RadioListTile(
              value: 1,
              groupValue: 1,
              title: const Text('Femenino'),
              onChanged: (value) {},
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Mauricio',
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
