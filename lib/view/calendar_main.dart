import 'dart:ui';

import 'package:flutter/material.dart';
import 'user_profile.dart';

class CalendarMainPage extends StatelessWidget {
  const CalendarMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NEXPO'),
        actions: [
          TextButton(
            onPressed: () {
              // TODO: Implement logout functionality
            },
            child: const Text(
              'LOGOUT',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: Navigate to profile page
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfilePage()),
              );
            },
            child: const Text(
              'PROFILE',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search for events, tags',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            const SizedBox(height: 14.0),
            const Text(
              'Events Nearby',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.festival, color: Colors.orange),
                  title: const Text('Local Fair'),
                  subtitle: const Text('Oct 5, 3:00 PM'),
                  trailing: const Text(
                      'Local Park',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                  ),
                  onTap: () {
                    // TODO: Navigate to event details
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.palette_rounded, color: Colors.blue),
                  title: const Text('Art Walk'),
                  subtitle: const Text('Oct 12, 6:00 PM'),
                  trailing: const Text(
                      'City Center',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  onTap: () {
                    // TODO: Navigate to event details
                  },
                ),
              ],
            ),
            const SizedBox(height: 14.0),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(child: Text('Map View Here')),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/music_event.jpg'), // Placeholder image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                              ),
                              child: const Text(
                                'Music',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Concert', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 4.0),
                              Text('Live Music Night', style: TextStyle(fontSize: 14)),
                              SizedBox(height: 4.0),
                              Text('Oct 10, 7:00 PM', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/culinary_event.jpg'), // Placeholder image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                              ),
                              child: const Text(
                                'Culinary',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Food', style: TextStyle(fontSize: 16)),
                              SizedBox(height: 4.0),
                              Text('Gourmet Food Tasting', style: TextStyle(fontSize: 14)),
                              SizedBox(height: 4.0),
                              Text('Oct 18, 6:30 PM', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'This Month\'s Events',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.calendar_month, color: Colors.white),
                  ),
                  title: const Text('01 - Street Food Festival'),
                  subtitle: const Text('Downtown'),
                  onTap: () {
                    // TODO: Navigate to event details
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.music_note, color: Colors.white),
                  ),
                  title: const Text('15 - Live Music Night'),
                  subtitle: const Text('Parksquare'),
                  onTap: () {
                    // TODO: Navigate to event details
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.movie, color: Colors.white),
                  ),
                  title: const Text('15 - Outdoor Cinema'),
                  subtitle: const Text('Beachfront'),
                  onTap: () {
                    // TODO: Navigate to event details
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.palette, color: Colors.white),
                  ),
                  title: const Text('30 - Local Artisan Market'),
                  subtitle: const Text('City Center'),
                  onTap: () {
                    // TODO: Navigate to event details
                  },
                ),
                const Divider(),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  // TODO: Implement explore more functionality
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 14.0),
                  child: Text('Explore More'),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
