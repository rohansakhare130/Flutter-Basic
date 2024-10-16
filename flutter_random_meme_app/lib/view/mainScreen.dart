import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String imgUrl = 'https://raw.githubusercontent.com/codewithdhruv22/CodeWithDhruv/main/applogo.png';
  int memeNo = 1; // Initialize with a meme number for display
  int targetMeme = 100; // Set a target number of memes
  bool isLoading = true; // Manage loading state

  @override
  void initState() {
    super.initState();
    // Simulate loading
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false; // Change loading state after delay
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Text(
              "Meme #$memeNo", 
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              "Target $targetMeme Memes", 
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            isLoading
                ? Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                : Image.network(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitHeight,
                    imgUrl, 
                  ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoading = true; // Reset loading state
                  // You could implement functionality to fetch a new meme here
                });
                // Simulate a loading time when the button is pressed
                Future.delayed(Duration(seconds: 2), () {
                  setState(() {
                    isLoading = false; // Change loading state after delay
                    memeNo++; // Increment the meme number
                  });
                });
              },
              child: Container(
                height: 50,
                width: 150,
                child: Center(
                  child: Text(
                    "More Fun!!",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              "APP CREATED BY",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "CODE WITH DHRUV",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
