import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/thirdpage.dart';

class Next extends StatelessWidget {
  Next({super.key});
  final List<String> alphabets = [
    'A',
    'b',
    'c',
    'd',
    'e',
    'f',
    'h',
    'I',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's'
  ];
  Color getRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Alphabets',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(162, 26, 175, 66),
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: alphabets.map((letter) {
            return Container(
              width: 60,
              height: 60,
              color: getRandomColor(),
              child: Center(
                child: Text(
                  letter,
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Thirdpage()),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      
    );
  }
}
