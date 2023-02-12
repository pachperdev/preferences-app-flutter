import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/screens/screens.dart';
import 'package:preferences_app_flutter/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Preferences.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (context) => const HomeScreen(),
        SettingsScreen.routerName: (context) => const SettingsScreen(),
      },
      theme: ThemeData.light(),
    );
  }
}
