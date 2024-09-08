import 'package:flutter/material.dart';
import 'package:traveler/screens/currency_converter_screen.dart';
import 'package:traveler/screens/main_screen.dart';
import 'package:traveler/screens/login_screen.dart';
import 'package:traveler/screens/profile_screen.dart';

class DropMenu extends StatelessWidget {
  const DropMenu({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF3F5F6),
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Matt Revas', style: TextStyle(fontSize: 20)),
            accountEmail: Text('ID : 56456941'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/images/profile.jpg'),
                  width: 105,
                  height: 112,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover),
            ),
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
            onTap: () {},
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
