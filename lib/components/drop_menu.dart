import 'package:flutter/material.dart';
import 'package:traveler/components/profile_info.dart';
import 'package:traveler/screens/currency_converter_screen.dart';
import 'package:traveler/screens/main_screen.dart';
import 'package:traveler/screens/login_screen.dart';
import 'package:traveler/screens/profile_screen.dart';
import 'package:traveler/screens/settings_screen.dart';

class DropMenu extends StatelessWidget {
  const DropMenu({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: const Color(0xFFF3F5F6),
      child: Column(
        children: [
          Container(
            width: 350,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const ProfileInfo(),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
                (route) => false,
              );
            },
          ),
          ListTile(
              title: const Text('Currency Converter'),
              leading: const Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CurrencyConverterScreen(
                            isFromDrawer: true,
                          )),
                );
              }),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileScreen(
                          isFromDrawer: true,
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
