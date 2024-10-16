import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:listtile/screen/card_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), 
            decoration: BoxDecoration(
              color: const Color.fromARGB(31, 132, 131, 131), 
              border: Border.all(color: const Color.fromARGB(255, 58, 58, 58)), 
              borderRadius: BorderRadius.circular(8), 
            ),
            child: ListTile(
              title: const Text('Title'),
              subtitle: const Text('Price: 100'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                   Get.to(CardPage());
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      print('deleted');
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
