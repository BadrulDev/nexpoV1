import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NEXPO'),
        actions: [
          TextButton(
            onPressed: () {
              // TODO: Add login functionality
            },
            child: const Text(
              'LOGIN',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: Add register functionality
            },
            child: const Text(
              'REGISTER',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for Attractions',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),

              // Explore Malaysia Section
              Card(
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: const Icon(Icons.person),
                      ),
                      title: const Text('Explore Malaysia!'),
                      subtitle: const Text('Your personalized travel guide'),
                    ),
                    Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Center(child: Text('Map Placeholder')),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Malacca', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Local Insights Section
              const Text('Local Insights', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 100,
                            child: Center(child: Text('Image URL')),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Discover hidden gems in Malaysia'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Local Guide'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 100,
                            child: Center(child: Text('Image URL')),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Sustainable tourism tips'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Travel Enthusiast'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Fascinating Facts Section
              const Text('Fascinating Facts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                elevation: 2,
                child: ListTile(
                  title: const Text('Culture Trivia'),
                  subtitle: const Text('Learn about Malaysia\'s diverse traditions'),
                  // TODO: Fetch culture trivia from backend
                ),
              ),
              const SizedBox(height: 8),
              Card(
                elevation: 2,
                child: ListTile(
                  title: const Text('Nature Wonders'),
                  subtitle: const Text('Explore Malaysia\'s breathtaking landscapes'),
                  // TODO: Fetch nature wonders from backend
                ),
              ),

              const SizedBox(height: 16),

              // Quick Tips Section
              const Text('Quick Tips', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text('Ticket Discounts'),
                            // TODO: Fetch ticket discounts from backend
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text('Sustainability Index'),
                            // TODO: Fetch sustainability index from backend
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Create Itinerary Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Add itinerary creation functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                  child: const Text(
                    'Create Itinerary',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Explore More Section
              Card(
                elevation: 2,
                child: Container(
                  height: 150,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Explore More Placeholder')),
                ),
              ),

              const SizedBox(height: 16),

              // Crowd Insights Section
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        title: const Text('Current Visitors'),
                        subtitle: const Text('500'),
                        // TODO: Fetch current visitor count from backend
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        title: const Text('Peak Hours'),
                        subtitle: const Text('11 AM - 3 PM'),
                        // TODO: Fetch peak hours from backend
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Languages Section
              const Text('Languages', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                children: const [
                  Chip(label: Text('English')),
                  Chip(label: Text('Mandarin')),
                  Chip(label: Text('Spanish')),
                  // TODO: Fetch available languages from backend
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
