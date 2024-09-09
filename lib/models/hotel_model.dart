class HotelModel {
  final String name;
  final String image;
  final String price;
  final String rating;
  final int reviews;
  final List<String> facilities;

  HotelModel({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.facilities,
  });
}

final List<HotelModel> hotels = [
  HotelModel(
    name: 'Bermudha',
    image: 'assets/images/hotels/3.png',
    price: '\$250',
    rating: '4.9',
    reviews: 300,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Tv', 'Spa', 'Restaurant'],
  ),
  HotelModel(
    name: 'HotelArtistry Studio',
    image:
        'assets/images/hotels/6.png',
    price: '\$280',
    rating: '4.8',
    reviews: 220,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Gym', 'Tv'],
  ),
  HotelModel(
    name: 'EtherealElegance Hotels',
    image:
        'assets/images/hotels/5.png',
    price: '\$300',
    rating: '4.7',
    reviews: 180,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Gym', 'Tv', 'Spa', 'Bar'],
  ),
  HotelModel(
    name: 'Island The Journey',
    image:
        'assets/images/hotels/1.png',
    price: '\$180',
    rating: '4.5',
    reviews: 200,
    facilities: ['Free Wifi', 'Breakfast', 'Tv', 'Spa', 'Bar', 'Restaurant', 'Parking', 'Laundry'],
  ),
  HotelModel(
    name: 'The River Front Resort',
    image:
        'assets/images/hotels/2.png',
    price: '\$220',
    rating: '4.8',
    reviews: 150,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Gym'],
  ),
  HotelModel(
    name: 'BlissfulBoutique Stays',
    image:
        'assets/images/hotels/4.png',
    price: '\$200',
    rating: '4.6',
    reviews: 250,
    facilities: ['Wi-Fi', 'Parking', 'Pool', 'Gym', 'Tv', ],
  ),
];
