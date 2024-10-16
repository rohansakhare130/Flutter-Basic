import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listtile/screen/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure initialization
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
