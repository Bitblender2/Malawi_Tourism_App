// category_details_page.dart
import 'package:flutter/material.dart';

class CategoryDetailsPage extends StatelessWidget {
  final String categoryName;

  CategoryDetailsPage(this.categoryName, {super.key});

  final Map<String, List<Map<String, String>>> categoryImages = {
    'Mountains': [
      {
        'imagePath': 'assets/images/mulanje1.jpg',
        'description': 'Mulanje1: A breathtaking view of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje2.jpg',
        'description':
            'Mulanje2: Another stunning perspective of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje3.jpg',
        'description': 'Mulanje3: Explore the beauty of Mount Mulanje.'
      },
    ],

    'Lakes and Rivers ': [
      {
        'imagePath': 'assets/images/mulanje1.jpg',
        'description': 'Mulanje1: A breathtaking view of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje2.jpg',
        'description':
            'Mulanje2: Another stunning perspective of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje3.jpg',
        'description': 'Mulanje3: Explore the beauty of Mount Mulanje.'
      },
    ],

    'Wildlife ': [
      {
        'imagePath': 'assets/images/mulanje1.jpg',
        'description': 'Mulanje1: A breathtaking view of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje2.jpg',
        'description':
            'Mulanje2: Another stunning perspective of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje3.jpg',
        'description': 'Mulanje3: Explore the beauty of Mount Mulanje.'
      },
    ],

    'Hotels and Lodges ': [
      {
        'imagePath': 'assets/images/mulanje1.jpg',
        'description': 'Mulanje1: A breathtaking view of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje2.jpg',
        'description':
            'Mulanje2: Another stunning perspective of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje3.jpg',
        'description': 'Mulanje3: Explore the beauty of Mount Mulanje.'
      },
    ],

    'Culture ': [
      {
        'imagePath': 'assets/images/mulanje1.jpg',
        'description': 'Mulanje1: A breathtaking view of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje2.jpg',
        'description':
            'Mulanje2: Another stunning perspective of Mount Mulanje.'
      },
      {
        'imagePath': 'assets/images/mulanje3.jpg',
        'description': 'Mulanje3: Explore the beauty of Mount Mulanje.'
      },
    ],
    // Add entries for other categories with images and descriptions
  };

  @override
  Widget build(BuildContext context) {
    final imageDescriptions = categoryImages[categoryName] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemCount: imageDescriptions.length,
        itemBuilder: (context, index) {
          final imagePath = imageDescriptions[index]['imagePath'] ?? '';
          final description = imageDescriptions[index]['description'] ?? '';

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for "Read More" button
                    },
                    child: const Text('Read More'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
