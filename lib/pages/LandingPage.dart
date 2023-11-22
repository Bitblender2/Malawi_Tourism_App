import 'package:flutter/material.dart';
import 'package:malawi_tourism_appv1/pages/CategoriesPage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void delay() async {
    await Future.delayed(const Duration(seconds: 3), () {
      navigateToCategoryDetails(context, 'CategoriesPage()');
    });
  }

  @override
  void initState() {
    // checkIfLoggedIn();
    delay();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/logo2.png',
              width: size.width,
              height: size.height,
            ),
            // ignore: prefer_const_constructors
            Center(
              // ignore: prefer_const_constructors
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  // ignore: prefer_const_constructors
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToCategoryDetails(BuildContext context, String s) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CategoriesPage()),
  );
}
