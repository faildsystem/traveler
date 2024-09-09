import 'package:flutter/material.dart';
import 'package:traveler/screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.isFromDrawer});

  final bool isFromDrawer;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: widget.isFromDrawer
          ? AppBar(
              backgroundColor: const Color(0xFFFFFFFF),
              title: const Text(
                'Profile',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Matt Revas',
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'ID : 56456941',
                style: TextStyle(
                  color: const Color(0xFF191C32).withOpacity(0.4),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 250,
                height: 75,
                decoration: BoxDecoration(
                  color: const Color(0xFFA5F4D8).withOpacity(0.58),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.message_rounded,
                    color: Color(0xFF1BBA85),
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20),
              _buildTile(icon: Icons.settings_outlined, title: 'Preferences'),
              _buildTile(icon: Icons.lock_outline, title: 'Account Security'),
              SizedBox(
                width: 220,
                child: LinearProgressIndicator(
                  minHeight: 8,
                  value: 0.4,
                  borderRadius: BorderRadius.circular(25),
                  backgroundColor: const Color(0xFFA5F4D8).withOpacity(0.58),
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Color(0xFF1BBA85)),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Text(
                      'Intermidiate',
                      style: TextStyle(
                        color: const Color(0xFF191C32).withOpacity(0.4),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              _buildTile(icon: Icons.help_outline, title: 'Help'),
              _buildTile(
                icon: Icons.login,
                title: 'Logout',
                onPresseed: () {
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
      ),
    );
  }

  ListTile _buildTile(
      {required IconData icon, required String title, Function()? onPresseed}) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color(0xFF1BBA85),
        size: 35,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Color(0xFF9395A4),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF26273C),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onPresseed,
    );
  }
}
