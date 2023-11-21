import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malawi Tourism App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo widget
            Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo2.png'), // Replace 'assets/logo.png' with the path to your logo image
                  fit: BoxFit.contain,


                ),
              ),
            ),

            // Text widget
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to Malawi Tourism!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),

            // Button widget
            ElevatedButton(
              onPressed: () {
                // Add navigation logic to the next page here
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesPage()));
              },
              child: const Text('get started'),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Column(
        children: [
          // Clickable widget 1
          GestureDetector(
            onTap: () {
              // Add functionality for the first category here
              navigateToCategoryDetails(context, 'Mountains');
            },
            child: const CategoryWidget('Mountains'),
          ),

          // Clickable widget 2
          GestureDetector(
            onTap: () {
              // Add functionality for the second category here
              navigateToCategoryDetails(context, 'Lakes and Rivers ');
            },
            child: const CategoryWidget('Lakes and Rivers'),
          ),

          // Clickable widget 3
          GestureDetector(
            onTap: () {
              // Add functionality for the third category here
              navigateToCategoryDetails(context, 'Wildlife ');
            },
            child: const CategoryWidget('Wildlife'),
          ),

          // Clickable widget 4
          GestureDetector(
            onTap: () {
              // Add functionality for the fourth category here
              navigateToCategoryDetails(context, 'Hotels and Lodges ');
            },
            child: const CategoryWidget('Hotels and Lodges'),
          ),

          // Clickable widget 5
          GestureDetector(
            onTap: () {
              // Add functionality for the fifth category here
              navigateToCategoryDetails(context, 'Culture ');
            },
            child: const CategoryWidget('Culture'),
          ),
        ],
      ),
    );
  }
  void navigateToCategoryDetails(BuildContext context, String categoryName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryDetailsPage(categoryName),
      ),
    );
  }
}
class CategoryDetailsPage extends StatelessWidget {
  final String categoryName;

  CategoryDetailsPage(this.categoryName, {super.key});

  final Map<String,List<String>>categoryImages = {
    'Mountains': [
      'assets/images/mulanje1.jpg',
      'assets/images/mulanje2.jpg',
      'assets/images/mulanje3.jpg',
    ],
    'Lakes and Rivers': [
      'assets/images/mulanje.jpg',

    ],
    'Wildlife': [
      '',
      '',
      '',
    ],

    'Hotels and Lodges': [
      '',
      '',
      '',
    ],
    'culture': [
      '',
      '',
      '',
    ],

  };

  @override
  Widget build(BuildContext context) {
    //map of category name to image path

    //get the list of image path based on the category
  final imagePaths= categoryImages[categoryName]?? [];

  //print information about images


    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index){
          final imagePath = imagePaths[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imagePath,
    //          imagePaths[index],
              fit: BoxFit.cover,

            ),
          );
        },
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String category;

  const CategoryWidget(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 100.0,
        color: Colors.blue,
        child: Center(
          child: Text(
              category,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0
            ),
          ),
        ),
      ),
    );
  }
}
