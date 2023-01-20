import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/provider/provider.dart';

import 'package:user_preferences/screens/screens.dart';
import 'package:user_preferences/share_preferences/preferencias.dart';

//gestor de estado provider

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //nos aseguramos de que el binding este inicializado para poder usar el shared preferences

  await Preferences.init();

  //el main si puede ser asincrono
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode)),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //el build siempre es sincrono porque es el que se encarga de dibujar la interfaz

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}


//la idea de esta app es aprender a mantener informacion en el dispositivo para que no se pierda al cerrar la app sin necesidad de usar una base de datos