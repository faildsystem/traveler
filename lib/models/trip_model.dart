class TripModel{
  final String image;
  final String title;
  final String minPrice;

  TripModel({
    required this.image,
    required this.title,
    required this.minPrice,
  });
}

final List<TripModel> trips = [
  TripModel(
    image: 'assets/images/trips/4.png',
    title: 'America',
    minPrice: '500',
  ),
  TripModel(
    image: 'assets/images/trips/2.png',
    title: 'Europe',
    minPrice: '400',
  ),
  TripModel(
    image: 'assets/images/trips/7.png',
    title: 'Asia',
    minPrice: '300',
  ),
  TripModel(
    image: 'assets/images/trips/3.png',
    title: 'Africa',
    minPrice: '200',
  ),
  TripModel(
    image: 'assets/images/trips/1.png',
    title: 'Australia',
    minPrice: '600',
  ),
  TripModel(
    image: 'assets/images/trips/5.png',
    title: 'Antarctica',
    minPrice: '700',
  ),
  TripModel(
    image: 'assets/images/trips/6.png',
    title: 'Oceania',
    minPrice: '800',
  ),
];