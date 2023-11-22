import 'package:flutter/material.dart';
import 'CategoriesPage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/logo2.png'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoriesPage()));
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
