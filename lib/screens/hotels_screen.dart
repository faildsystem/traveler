import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traveler/components/app_text_field.dart';
import 'package:traveler/models/hotel_model.dart';
import 'package:traveler/screens/reserve_screen.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({
    super.key,
  });

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          'Hotels',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppTextField(
                controller: searchController,
                hintText: 'Search hotels',
                obscureText: false,
                radius: 13,
                fillColor: const Color(0xFFFAFAFF),
                suffixIcon: const Icon(
                  Icons.search_outlined,
                  color: Color(0xFF7A869A),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildButton(
                    text: 'Filters',
                    icon: Icons.filter_list,
                    onPressed: () {},
                  ),
                  _buildButton(
                    text: 'Sorts',
                    icon: Icons.swap_vert,
                    onPressed: () {},
                  ),
                  _buildButton(
                    text: 'Maps',
                    icon: Icons.location_pin,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    final hotel = hotels[index];
                    return _buildHotelCard(hotel);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildHotelCard(HotelModel hotel) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ReserveScreen(hotel: hotel);
        }));
      },
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                image: AssetImage(hotel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hotel.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                hotel.price,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 55,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1BBA85),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                hotel.rating,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Text(
                        '(${hotel.reviews} reviews)',
                        style: TextStyle(
                          color: const Color(0xFF7A869A).withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                '/ per night',
                style: TextStyle(
                  color: Color(0xFF7A869A),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  ElevatedButton _buildButton(
      {required icon, required String text, required Function() onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFAFAFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF7A869A),
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF7A869A),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
