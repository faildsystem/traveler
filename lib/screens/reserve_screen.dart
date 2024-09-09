import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traveler/components/app_button.dart';
import 'package:traveler/models/hotel_model.dart';

class ReserveScreen extends StatelessWidget {
  const ReserveScreen({super.key, required this.hotel});

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Image.asset(
              hotel.image,
              fit: BoxFit.fill,
            ),
          ),
          _arrowButton(context),
          scroll(),
        ],
      ),
    );
  }

  _arrowButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      maxChildSize: 1.0,
      minChildSize: 0.4,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hotel.name,
                      style: const TextStyle(
                        color: Color(0xFF172B4D),
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Color(0xFFA5A7AC),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
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
                const SizedBox(
                  height: 20,
                ),
                const Divider(height: 2),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 65,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFF),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Check-in",
                                style: TextStyle(
                                  color: Color(0xFF7A869A),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "25 Aug",
                                style: TextStyle(
                                  color: Color(0xFF172B4D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Color(0xFF7A869A),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Check-in",
                                style: TextStyle(
                                  color: Color(0xFF7A869A),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "26 Aug",
                                style: TextStyle(
                                  color: Color(0xFF172B4D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFF),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Guest",
                            style: TextStyle(
                              color: Color(0xFF7A869A),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                              color: Color(0xFF172B4D),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFF),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Room",
                            style: TextStyle(
                              color: Color(0xFF7A869A),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Color(0xFF172B4D),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Facilities",
                  style: TextStyle(
                    color: const Color(0xFF172B4D).withOpacity(0.6),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildFacilitiesRow(context),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "${hotel.price}",
                      style: const TextStyle(
                        color: Color(0xFF172B4D),
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "/ per night",
                      style: TextStyle(
                        color: const Color(0xFF172B4D).withOpacity(0.6),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: AppButton(
                        onPressed: () {},
                        text: 'Book Now',
                        borderRadius: 50,
                        enabled: true,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  _buildFacilitiesRow(BuildContext context) {
    return Wrap(
      spacing: 25,
      runSpacing: 20,
      children: hotel.facilities.map((facility) {
        IconData icon;
        switch (facility) {
          case 'Free Wifi':
          case 'Wi-Fi':
            icon = Icons.wifi;
            break;
          case 'Parking':
            icon = Icons.local_parking;
            break;
          case 'AC':
            icon = Icons.ac_unit;
            break;
          case 'Tv':
          case 'TV':
            icon = Icons.tv;
            break;
          case 'Pool':
          case 'Swimming Pool':
            icon = Icons.pool;
            break;
          case 'Spa':
            icon = Icons.spa;
            break;
          case 'Gym':
            icon = Icons.fitness_center;
            break;
          case 'Bar':
            icon = Icons.local_bar;
            break;
          case 'Restaurant':
            icon = Icons.restaurant;
            break;
          case 'Laundry':
            icon = Icons.local_laundry_service;
            break;
          default:
            icon = Icons.check;
        }
        return _facilityItem(icon: icon, text: facility);
      }).toList(),
    );
  }

  Column _facilityItem({required IconData icon, required String text}) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color(0xFF7A869A).withOpacity(0.6),
            ),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF172B4D),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: const Color(0xFF172B4D).withOpacity(0.9),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
