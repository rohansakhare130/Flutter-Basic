import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://raw.githubusercontent.com/codewithdhruv22/CodeWithDhruv/main/applogo.png",
              width: 300,
              height: 300,
            ),
            SizedBox(height: 30),
            Text(
              'Welcome to UnSad',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
