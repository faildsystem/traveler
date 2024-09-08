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
    name: 'Island The Journey',
    image:
        'https://images.unsplash.com/photo-1464703278390-df5b3f1f61b2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
    price: '\$180',
    rating: '4.5',
    reviews: 200,
    facilities: ['Free Wifi', 'Breakfast', 'Tv', 'Spa', 'Bar', 'Restaurant', 'Parking', 'Laundry'],
  ),
  HotelModel(
    name: 'The River Front Resort',
    image:
        'https://images.unsplash.com/photo-1579625224451-b0ab6ed101f5?q=80&w=2021&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: '\$220',
    rating: '4.8',
    reviews: 150,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Gym'],
  ),
  HotelModel(
    name: 'Bermudha',
    image: 'https://plus.unsplash.com/premium_photo-1675745329378-5573c360f69f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: '\$250',
    rating: '4.9',
    reviews: 300,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Tv', 'Spa', 'Restaurant'],
  ),
  HotelModel(
    name: 'BlissfulBoutique Stays',
    image:
        'https://images.unsplash.com/photo-1549294413-26f195200c16?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: '\$200',
    rating: '4.6',
    reviews: 250,
    facilities: ['Wi-Fi', 'Parking', 'Pool', 'Gym', 'Tv', ],
  ),
  HotelModel(
    name: 'EtherealElegance Hotels',
    image:
        'https://images.unsplash.com/photo-1611892440504-42a792e24d32?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: '\$300',
    rating: '4.7',
    reviews: 180,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Gym', 'Tv', 'Spa', 'Bar'],
  ),
  HotelModel(
    name: 'HotelArtistry Studio',
    image:
        'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: '\$280',
    rating: '4.8',
    reviews: 220,
    facilities: ['Free Wifi', 'Breakfast', 'Swimming Pool', 'Gym', 'Tv'],
  ),
];
