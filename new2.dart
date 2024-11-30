import 'package:flutter/material.dart';

class CustomClass extends StatefulWidget {
  const CustomClass({super.key});

  @override
  State<CustomClass> createState() => _CustomClassState();
}

class _CustomClassState extends State<CustomClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(
          'AppBar',
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 1.7,
          ),
        ),
      ),
    );
  }
}


class Quote{
  
}
