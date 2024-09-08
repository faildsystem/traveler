import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key, required this.isFromBar});

  final bool isFromBar;

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': 'Flight Booking Confirmed',
        'description':
            'Your flight to Paris has been confirmed. Departure: 10:00 AM, 20th Sep.'
      },
      {
        'title': 'Hotel Reservation Reminder',
        'description':
            'Reminder: Your check-in at Grand Hotel is on 21st Sep at 3:00 PM.'
      },
      {
        'title': 'New Travel Destination Suggestion',
        'description': 'Explore the beautiful beaches of Bali this summer!'
      },
      {
        'title': 'Luggage Check-in Time Update',
        'description':
            'Your airline has updated the luggage check-in time to 8:30 AM.'
      },
    ];

    return Scaffold(
      appBar: isFromBar
          ? AppBar(
              title: const Text('Notifications'),
              backgroundColor: const Color(0xFFFFFFFF),
              centerTitle: true,
            )
          : null,
      backgroundColor: const Color(0xFFFFFFFF),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 2,
            child: ListTile(
              leading:
                  const Icon(Icons.notifications, color: Color(0xFF1BBA85)),
              title: Text(notifications[index]['title']!),
              subtitle: Text(notifications[index]['description']!),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
