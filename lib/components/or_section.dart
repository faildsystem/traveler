import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveler/screens/login_screen.dart';
import 'package:traveler/screens/register_screen.dart';

class OrSection extends StatelessWidget {
  const OrSection({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Or',
          style: TextStyle(
            color: Color(0xFFB3B2B2),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.facebookF),
              color: Colors.blue,
            ),
            const SizedBox(width: 5),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.google),
              color: Colors.red,
            ),
          ],
        ),
        const SizedBox(height: 35),
        Text(
          !isLogin ? 'Already Have An Account?' : 'Don\'t Have An Account?',
          style: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => isLogin ? const RegisterScreen() : const LoginScreen(),
              ),
            );
          },
          child: Text(
            !isLogin ? 'LOGIN' : 'REGISTER',
            style: const TextStyle(
              color: Color(0xFF1BBA85),
              fontSize: 14,
              letterSpacing: 8,
              fontWeight: FontWeight.normal,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        const SizedBox(
          width: 25,
          child: Divider(
            color: Color(0xFF1BBA85),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}