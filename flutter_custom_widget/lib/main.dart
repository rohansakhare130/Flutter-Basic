import 'package:flutter/material.dart'; 
import 'package:flutter_custom_widget/widgets/rounded_btn.dart';
import 'package:flutter_custom_widget/widgets/text_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(
              width: 250, // Set your desired width here
              child: TextInputs(
                labelText: 'Usename',
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
          
          const SizedBox(
              width: 250, // Set your desired width here
              child: TextInputs(
                labelText: 'Password',
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20), 
            RoundedButton(
              btnName: 'Login',
              icon: const Icon(Icons.lock, color: Colors.white),
              bgcolor: Colors.red,
              callBack: () {
                print('Login');
              },
              textStyle: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
