import 'package:flutter/material.dart';
import 'package:flutter_application_preferences/src/share_preferences/preferences.dart';
import 'package:flutter_application_preferences/src/widgets/slide_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SlideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Género: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name} '),
          const Divider(),
        ],
      ),
    );
  }
}
