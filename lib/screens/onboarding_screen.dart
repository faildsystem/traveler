import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:traveler/components/app_button.dart';
import 'package:traveler/models/onboarding_model.dart';
import 'package:traveler/screens/register_screen.dart';

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: 'Explore Destinations',
    description:
        'Discover the places for your trip in the \nworld and feel great.',
    image: 'assets/images/mountain 1.png',
  ),
  OnboardingModel(
    title: 'Choose a Destination',
    description:
        'Select a place for your trip easily and know \nthe exact cost of the tour.',
    image: 'assets/images/destination 1.png',
  ),
  OnboardingModel(
    title: 'Fly to Destination',
    description:
        'Finally, get ready for the tour and go to \nyour desired destination.',
    image: 'assets/images/travelling (2) 1.png',
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F5F6),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onboardingData[index].image),
                      const SizedBox(height: 40),
                      Text(
                        onboardingData[index].title,
                        style: const TextStyle(
                          color: Color(0xFF121420),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingData[index].description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFFA5A7AC),
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: onboardingData.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xFF1BBA85),
                dotColor: Color(0xFFC4C4C4),
                dotHeight: 13,
                dotWidth: 28,
                spacing: 5,
              ),
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: AppButton(
            onPressed: () {
              if (_currentIndex < onboardingData.length - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                  (route) => false,
                );
              }
            },
            text: _currentIndex < onboardingData.length - 1 ? 'Next' : 'Get Started',
            borderRadius: 8,
            enabled: true,
          ),
        ),
      ),
    );
  }
}
