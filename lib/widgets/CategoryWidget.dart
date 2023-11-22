import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;

  const CategoryWidget(this.category, {Key? key}) : super(key: key);

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
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
