import 'package:flutter/material.dart';
import 'package:user_preferences/share_preferences/preferencias.dart';

import 'package:user_preferences/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName =
      'home'; //esto es para poder llamar a la ruta desde cualquier parte de la app

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer: const CustomDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //coloco tres textos y tres dividers,
            Text('Darkmode: ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Género: ${Preferences.gender}'),
            const Divider(),
            Text('Nombre de usuario: ${Preferences.name}'),
            const Divider(),
          ],
        ));
  }
}
