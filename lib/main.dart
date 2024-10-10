import 'package:flutter/material.dart';
import 'package:flutter_application_preferences/src/provider/theme_provider.dart';
import 'package:flutter_application_preferences/src/screens/home_screen.dart';
import 'package:flutter_application_preferences/src/screens/profile_screen.dart';
import 'package:flutter_application_preferences/src/screens/settings_screen.dart';
import 'package:flutter_application_preferences/src/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen(),
        PersonScreen.routerName: (_) => const PersonScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
