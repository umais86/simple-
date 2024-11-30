import 'package:flutter/material.dart';

class Navbar1 extends StatefulWidget {
  const Navbar1({super.key});

  @override
  State<Navbar1> createState() => _Navbar1State();
}

class _Navbar1State extends State<Navbar1> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const Center(child: Text('Text')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32), label: 'text'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 32), label: 'text'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera, size: 32), label: 'Camera'),
        ],
      ),
    );
  }
}
