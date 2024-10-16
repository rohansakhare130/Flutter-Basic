import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 60, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                child: Image.network(
                  'https://img.freepik.com/free-vector/man-red-shirt-with-white-collar_90220-2873.jpg?t=st=1726250477~exp=1726254077~hmac=de43afa1bd0813447e16dec51280a5177914604bf89cab70a632510fe1a47746&w=740',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10), 
              const Text(
                'Name',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
