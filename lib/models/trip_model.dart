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
    // image: 'assets/images/image 5.png',
    image: 'https://plus.unsplash.com/premium_photo-1672082422409-879d79636902?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'America',
    minPrice: '500',
  ),
  TripModel(
    image: 'https://plus.unsplash.com/premium_photo-1695735927074-20d374c21ecc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Europe',
    minPrice: '400',
  ),
  TripModel(
    image: 'https://plus.unsplash.com/premium_photo-1677829177639-28be8d494543?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Asia',
    minPrice: '300',
  ),
  TripModel(
    image: 'https://images.unsplash.com/photo-1519659528534-7fd733a832a0?q=80&w=1926&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Africa',
    minPrice: '200',
  ),
  TripModel(
    image: 'https://images.unsplash.com/photo-1546268060-2592ff93ee24?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Australia',
    minPrice: '600',
  ),
  TripModel(
    image: 'https://images.unsplash.com/photo-1595792419466-23cec2476fa6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Antarctica',
    minPrice: '700',
  ),
  TripModel(
    image: 'https://images.unsplash.com/photo-1658902050586-96af4d9a08c6?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Oceania',
    minPrice: '800',
  ),
];