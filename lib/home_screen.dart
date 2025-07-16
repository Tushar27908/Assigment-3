import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Step 1 : Create list to select the colors from
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.black,
    Colors.orange,
    Colors.white,
    Colors.teal,
    Colors.blueGrey,
    Colors.yellow,
  ];

  // Step 2: Create a variable to store the selected Color
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Color"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // Step 3: Get a random no. from (0 to length of list-1)
        final randomNumber = Random().nextInt(colors.length);

        // Step4: Update the selectedColor variable and call setstate
        setState(() {
          selectedColor = colors[randomNumber];
        });
      }),
      body: Center(
        child: Container(
            height: 150, width: 150, color: selectedColor ?? Colors.black),
      ),
    );
  }
}
