import 'package:flutter/material.dart';
import 'package:flutter_providers/providers/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.all(20),
      child: ChangeNotifierProvider<HomePageProvider>(
          create: (context) => HomePageProvider(),
          child: Consumer<HomePageProvider>(builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  provider.eligibilityMessage.toString(),
                  style: TextStyle(
                    color: (provider.isEligible == true)
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter your age",
                  ),
                  onChanged: (val) {
                    provider.checkEligibility(int.parse(val));
                  },
                )
              ],
            );
          })),
    )));
  }
}
