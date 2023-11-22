import 'package:flutter/material.dart';
import 'package:malawi_tourism_appv1/pages/LandingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splashscreen(),
    );
  }
}
