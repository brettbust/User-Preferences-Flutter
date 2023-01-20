import 'package:flutter/material.dart';
import 'package:user_preferences/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _DrawerHeader();
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              HomeScreen.routeName,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.party_mode, color: Colors.blue),
            title: const Text('Party Mode'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.blue),
            title: const Text('People'),
            onTap: () {},
          ),
          ListTile(
              leading: const Icon(Icons.settings, color: Colors.blue),
              title: const Text('Settings'),
              onTap: () => {
                    Navigator.pushReplacementNamed(
                        context, SettingsScreen.routeName),
                  }),
        ],
      ),
    );
  }
}
