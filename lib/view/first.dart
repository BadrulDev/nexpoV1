import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Filter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(label: Text('Sightseeing'), onSelected: (bool value) {}),
                FilterChip(label: Text('Restaurants'), onSelected: (bool value) {}),
                FilterChip(label: Text('Shopping'), onSelected: (bool value) {}),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to NEXPO!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Explore and discover new places',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Recommended Attractions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: AttractionCard(
                    category: 'Sightseeing',
                    image: 'Image of Attraction',
                    title: 'Baba Nyonya',
                    location: 'Malacca',
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: AttractionCard(
                    category: 'Art & Culture',
                    image: 'Image of Attraction',
                    title: 'Timah Tasoh Lake',
                    location: 'Perlis',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Visitor Reviews',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ReviewCard(
                    username: 'Traveler123',
                    review: 'Great experience visiting this place',
                    rating: 5,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ReviewCard(
                    username: 'Wanderlust22',
                    review: 'Beautiful and must-visit location',
                    rating: 4,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Travel Tips',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TravelTipCard(
              title: '10 Essential Travel Tips',
              tags: ['Tips', 'Travel'],
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            SizedBox(height: 8),
            TravelTipCard(
              title: 'Packing List for Tourists',
              tags: ['Tips'],
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: Text(
                  'View All Attractions',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AttractionCard extends StatelessWidget {
  final String category;
  final String image;
  final String title;
  final String location;

  AttractionCard({
    required this.category,
    required this.image,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.grey[300],
            child: Center(child: Text(image)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Chip(label: Text(category)),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                    location,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String username;
  final String review;
  final int rating;

  ReviewCard({
    required this.username,
    required this.review,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
                      Row(
                        //children: List.generate(rating, (index) => Icon(Icons.star, color: Colors.amber)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(review),
          ],
        ),
      ),
    );
  }
}

class TravelTipCard extends StatelessWidget {
  final String title;
  final List<String> tags;
  final String description;

  TravelTipCard({
    required this.title,
    required this.tags,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey[300],
            child: Center(child: Text('Image')),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 4,
                    children: tags.map((tag) => Chip(label: Text(tag))).toList(),
                  ),
                  Text(description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//meow moew nigga
