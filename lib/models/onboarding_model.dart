class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel(
      {required this.title, required this.description, required this.image});
}

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
