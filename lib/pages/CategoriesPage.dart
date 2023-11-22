// ignore: file_names
import 'package:flutter/material.dart';
import 'CategoryDetailsPage.dart';
import '../widgets/CategoryWidget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              navigateToCategoryDetails(context, 'Mountains');
            },
            child: const CategoryWidget('Mountains'),
          ),
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
          // Add GestureDetector widgets for other categories
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
