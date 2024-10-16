import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Added padding for better layout
          child: SizedBox(
            width: 300, // SizedBox to constrain the width
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    hintText: 'Enter your email', // Placeholder text
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Added padding inside the TextField
                  ),
                ),
                const SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    hintText: 'Enter your email', // Placeholder text
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Added padding inside the TextField
                  ),
                ),
                const SizedBox(height: 11), // Spacing between TextFields
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    hintText: 'Enter your password', // Placeholder text
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Added padding inside the TextField
                  ),
                ),
                const SizedBox(height: 20), // Spacing before the button
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Button pressed'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange, // Button background color
                    minimumSize: const Size(double.infinity, 36), // Full width button
                    textStyle: const TextStyle(color: Colors.white), // Text color
                  ),
                child: const Text('Submit'), // Button text
                  
                ),
                const SizedBox(height: 20),
                Text('Current Time: ${DateFormat('Hms').format(time)}')

              ],



            ),
          ),
        ),
      ),
    );
  }
}
