import 'package:flutter/material.dart';
import 'dart:math';

class RandomScreen extends StatefulWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  _RandomScreenState createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {

  List<int> randomColor = [
    0xFF42A5F5,
    0xFF6D6D10,
    0xFF9A1050,
    0xFF0F31DC,
    0xFF1DDC0F,
    0xFF78A807,
  ];

  int colorApp = 0xFF42A5F5;
  int colorBackground = 0xFF6D6D10;
  int index = 0;

  void randomAppBarColor(){
    randomColor.shuffle();
    colorBackground = randomColor.last;
    colorApp = randomColor.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorBackground),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Random Page"),
        backgroundColor: Color(colorApp),
      ),

      body: Center(
        child: Text("Count Of Index: $index"),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          randomAppBarColor();
          setState(() {
           index++;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
