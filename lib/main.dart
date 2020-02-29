import 'package:bmi_ui/bmi.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.redAccent,
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BMI Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String height = '', weight = '';
  String result = "result";
  final hController = TextEditingController();
  final wController = TextEditingController();

  void calculateBMI(String h, String w) {
    print("Welcome to the BMI calculator!");

    print("Please enter your height in inches: ");
    double height = double.parse(h);

    print("Please enter your weight in pounds: ");
    double weight = double.parse(w);

    print("height: $h");
    print("weight: $w");
    double bmi = (703 * weight) / pow(height, 2); //calculates bmi

//    bmi = double.parse(
//        (bmi).toStringAsFixed(2)); //rounds bmi to two decimal places

    setState(() {
      result = bmi.toStringAsFixed(3);
    });

    print("Your BMI is $bmi.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.blueAccent, width: 0.0),
                    ),
                    hintText: 'Height (inches)',
                  ),
                  textAlign: TextAlign.center,
                  controller: hController,
                  onChanged: (String textinput) {
                    setState(() {
                      height = hController.text;
                    });
                  }),
              TextField(
                  controller: wController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.blueAccent, width: 0.0),
                    ),
                    hintText: 'Height (inches)',
                  ),
                  onChanged: (String textinput) {
                    setState(() {
                      weight = wController.text;
                    });
                  }),
              FlatButton(
                  color: Colors.redAccent,
                  onPressed: () => calculateBMI(height, weight),
                  child: Text("Calculate")),
              Text(result),
            ],
          ),
        ),
      ),
    );
  }
}
