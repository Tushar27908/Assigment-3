import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftdice = 4;
  int rightdice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "DICEE",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.grey,
      body: GestureDetector(
        onTap: () {
          var random1 = Random().nextInt(5) + 1;
          var random2 = Random().nextInt(5) + 1;
          debugPrint(random1.toString());
          setState(() {
            leftdice = random1;
            rightdice = random2;
          });
        },
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/dice$leftdice.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/dice$rightdice.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
