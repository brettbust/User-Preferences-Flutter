import 'package:flutter/material.dart';

import 'package:validacion_formularios/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => const LoginScreen(),
        'home': (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
