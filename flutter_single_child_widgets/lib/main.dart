import 'package:flutter/material.dart';

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
      home: const ProductBox(name: 'Rohan', price: 20, description: 'dggbgvcxddd', image: ''),
    );
  }
}
class ProductBox extends StatelessWidget {
const ProductBox({super.key, required this.name, required this.description, required this.price, required this.image});

 final String name;
 final String description;
 final int price;
 final String image;

  
 Widget build(BuildContext context) {
 return Container(
 padding: EdgeInsets.all(2),
 height: 120,
 child: Card(
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: <Widget>[
 Image.asset("assets/appimages/" + image),
 Expanded(
 child: Container(
 padding: EdgeInsets.all(5),
child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[
 Text(this.name,
 style: TextStyle(fontWeight: FontWeight.bold)),
 Text(this.description),
Text("Price: " + this.price.toString()),
 ],
 )))
 ]))); }
}

// class MyButton extends StatelessWidget {
//  const MyButton({super.key});

//  @override
//  Widget build(BuildContext context) {
//  return Center(
//  child: Container(
//  height: 100.0,
//  width: 100.0,
//  color: Colors.yellow,
//  child: Align(
//  alignment: FractionalOffset(0.5, 0.5),
//  child: Container(
//  height: 40.0,
//  width: 40.0,
//  color: Colors.red,
//  ),
//  ),
//  ),
//  );
 
//  }
// }
