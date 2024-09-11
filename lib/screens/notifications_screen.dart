import 'package:flutter/material.dart';

final notifications = [
  {
    'title': 'Flight Booking Confirmed',
    'subtitle': 'Paris Flight on 20th Sep',
    'details': 'Your flight to Paris has been confirmed. Departure: 10:00 AM, 20th Sep.',
    'type': 'Booking',
    'timestamp': '2024-09-10 14:32:00',
  },
  {
    'title': 'Hotel Reservation Reminder',
    'subtitle': 'Check-in at Grand Hotel',
    'details': 'Reminder: Your check-in at Grand Hotel is on 21st Sep at 3:00 PM.',
    'type': 'Reminder',
    'timestamp': '2024-09-11 09:00:00',
  },
  {
    'title': 'New Travel Destination Suggestion',
    'subtitle': 'Visit Bali this Summer',
    'details': 'Explore the beautiful beaches of Bali this summer!',
    'type': 'Suggestion',
    'timestamp': '2024-09-12 10:45:00',
  },
  {
    'title': 'Luggage Check-in Time Update',
    'subtitle': 'New Check-in Time: 8:30 AM',
    'details': 'Your airline has updated the luggage check-in time to 8:30 AM.',
    'type': 'Update',
    'timestamp': '2024-09-13 08:00:00',
  },
];


class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key, required this.isFromBar});

  final bool isFromBar;

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  IconData _getNotificationIcon(String type) {
    switch (type) {
      case 'Reminder':
        return Icons.calendar_today;
      case 'Booking':
        return Icons.flight;
      case 'Suggestion':
        return Icons.explore;
      case 'Update':
        return Icons.update;
      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: widget.isFromBar
            ? AppBar(
                title: const Text('Notifications'),
                backgroundColor: const Color(0xFFFFFFFF),
                centerTitle: true,
              )
            : null,
        backgroundColor: const Color(0xFFFFFFFF),
        body: RefreshIndicator(
          onRefresh: () async {
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFA5F4D8).withOpacity(0.58),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
                      leading: Icon(
                        _getNotificationIcon(notification['type'] ?? ''),
                        color: const Color(0xFF1BBA85),
                      ),
                      title: Text(
                        notification['title']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(notification['subtitle']!),
                          const SizedBox(height: 4),
                          Text(
                            notification['timestamp']!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                notification['details']!,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
