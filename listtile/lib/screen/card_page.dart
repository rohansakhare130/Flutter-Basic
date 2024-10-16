import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(31, 132, 131, 131),
            border: Border.all(color: const Color.fromARGB(255, 58, 58, 58)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const ListTile(
            title: Text('Card'),
            subtitle: Text('Price: 100'),
            
          ),
        ));
  }
}
