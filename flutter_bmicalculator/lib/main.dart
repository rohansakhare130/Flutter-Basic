import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var InController = TextEditingController();

  var resulte = "";
  var bgColor = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Home'),
      ),
      body: Center(
        child: Container(
          width: 300,
          color: bgColor, // Set the background color here
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                    label: Text('Enter your Weight kg'),
                    prefixIcon: Icon(Icons.line_weight)),
              ),
              SizedBox(height: 21),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                    label: Text('Enter your height (in feet)'),
                    prefixIcon: Icon(Icons.height)),
              ),
              SizedBox(height: 21),
              TextField(
                controller: InController,
                decoration: InputDecoration(
                    label: Text('Enter your Height (in inch)'),
                    prefixIcon: Icon(Icons.height)),
              ),
              SizedBox(height: 21),
              ElevatedButton(
                onPressed: () {
                  var wt = wtController.text;
                  var ft = ftController.text;
                  var inch = InController.text;

                  if (wt.isNotEmpty && ft.isNotEmpty && inch.isNotEmpty) {
                    var iwt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (iFt * 12) + iInch;
                    var tCm = tInch * 2.54;
                    var tM = tCm / 100;

                    var bmi = iwt / (tM * tM);
                    var msg = "";
                    if (bmi > 25) {
                      msg = "You are Overweight!";
                      bgColor = Colors.orange.shade200;
                    } else if (bmi < 18) {
                      msg = "You are Underweight!";
                      bgColor = Colors.red.shade200;
                    } else {
                      msg = "You are Healthy!";
                      bgColor = Colors.green.shade200;
                    }

                    setState(() {
                      resulte = "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                    });
                  } else {
                    setState(() {
                      resulte = "Please enter required values";
                    });
                  }
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                resulte,
                style: TextStyle(fontSize: 21),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

