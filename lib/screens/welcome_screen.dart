import 'package:flutter/material.dart';
import 'package:traveler/screens/onboarding_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Ellipse 24.png'),
            Transform.rotate(
              angle: -19.22,
              child: const Text(
                'Welcome',
                style: TextStyle(
                  color: Color(0xFF191C32),
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/Ellipse 23.png',
                ),
                Positioned(
                  bottom: 60,
                  right: 25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(24),
                      elevation: 20,
                      shadowColor: const Color(0xFF000000).withOpacity(0.60),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.greenAccent.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
