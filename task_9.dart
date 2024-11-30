import 'package:flutter/material.dart';
// import 'package:flutter_assignment_0/otp_screen.dart';
// import 'package:flutter_assignment_0/sign.dart';
import 'package:flutter_assignment_0/signup.dart';
import 'dart:async';

import 'package:loading_animation_widget/loading_animation_widget.dart';

class E extends StatefulWidget {
  const E({super.key});

  @override
  State<E> createState() => _EState();
}

class _EState extends State<E> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Signup(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Loading",
          style: TextStyle(color: Color.fromARGB(0, 87, 94, 234), fontSize: 35),
        ),
      ),
      body: Center(
        child: LoadingAnimationWidget.stretchedDots(
          color: const Color(0xFF1A1A3F),
          size: 50,
        ),
      ),
    ));
  }
}
