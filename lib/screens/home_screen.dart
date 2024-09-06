import 'package:flutter/material.dart';
import 'package:traveler/screens/currency_converter_screen.dart';
import 'package:traveler/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF3F5F6),
        key: scaffoldKey,
        drawer: Drawer(
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
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              ListTile(
                  title: const Text('Currency Converter'),
                  leading: const Icon(Icons.currency_exchange),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CurrencyConverterScreen()),
                    );
                  }),
              ListTile(
                title: const Text('Profile'),
                leading: const Icon(Icons.person),
                onTap: () {},
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
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (route) => false);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF3F5F6),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Image.asset(
              'assets/icons/menu.png',
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/notification.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}
