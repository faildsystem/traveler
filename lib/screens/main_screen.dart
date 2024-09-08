import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:traveler/components/drop_menu.dart';
import 'package:traveler/screens/currency_converter_screen.dart';
import 'package:traveler/screens/home_screen.dart';
import 'package:traveler/screens/notifications_screen.dart';
import 'package:traveler/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CurrencyConverterScreen(isFromDrawer: false),
    NotificationsScreen(isFromBar: false),
    ProfileScreen(isFromDrawer: false),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        key: scaffoldKey,
        drawer: DropMenu(scaffoldKey: scaffoldKey),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationsScreen(
                      isFromBar: true,
                    ),
                  ),
                );
              },
              icon: Image.asset(
                'assets/icons/notification.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: _widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: GNav(
            selectedIndex: 0,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            haptic: true,
            tabBorderRadius: 12,
            duration: const Duration(milliseconds: 100),
            gap: 8,
            color: const Color(0xFFA5A7AC),
            activeColor: const Color(0xFFFFFFFF),
            iconSize: 24,
            tabBackgroundColor: const Color(0xFF1BBA85),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.swap_horiz,
                text: 'Currency Converter',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notifications',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBar navBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.swap_horiz),
          label: 'Currency Converter',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
