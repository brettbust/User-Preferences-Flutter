import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/provider/provider.dart';
import 'package:user_preferences/screens/screens.dart';
import 'package:user_preferences/share_preferences/preferencias.dart';
import 'package:user_preferences/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName =
      'settings'; //esto es para poder llamar a la ruta desde cualquier parte de la app

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  /* bool isDarkMode = false;
  int gender = 1;
  String name = 'Brett'; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            const Divider(),
            SwitchListTile.adaptive(
              value: Preferences.isDarkMode,
              title: const Text('Dark Mode'),
              onChanged: (value) {
                Preferences.isDarkMode = value;
                final themeProvider =
                    Provider.of<ThemeProvider>(context, listen: false);

                value
                    ? themeProvider.setDarkMode()
                    : themeProvider.setLightMode();
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile(
              value: 1, //para diferenciar las opciones de los radio buttons
              title: const Text('Masculino'),
              groupValue: Preferences.gender,
              onChanged: (value) {
                Preferences.gender = value ?? 1;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 2,
              title: const Text('Femenino'),
              groupValue: Preferences
                  .gender, //para que solo se pueda seleccionar una opción de las dos ya pertece al mismo grupo
              onChanged: (value) {
                Preferences.gender = value ?? 2;
                setState(() {});
              },
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: Preferences.name,
                decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona usando el teléfono'),
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
