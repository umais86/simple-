import 'dart:async';

import 'package:flutter/material.dart';

import 'task_4.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _Splashpagestate();
}

class _Splashpagestate extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const B(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 141, 141, 139),
        child: const Center(
          child: Text(
            'Welcome to '
            'My App',
            style: TextStyle(
              fontSize: 40,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
      ),
    );
  }
}
