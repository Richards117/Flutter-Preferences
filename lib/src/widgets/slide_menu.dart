import 'package:flutter/material.dart';
import 'package:flutter_application_preferences/src/screens/home_screen.dart';
import 'package:flutter_application_preferences/src/screens/profile_screen.dart';
import 'package:flutter_application_preferences/src/screens/settings_screen.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PersonScreen.routerName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, SettingsScreen.routerName);
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(),
    );
  }
}
