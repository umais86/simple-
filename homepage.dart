import 'package:flutter/material.dart';
// import 'package:flutter_assignment_0/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 194, 245),
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(15)),
              border: Border.all(
                  width: 5, color: const Color.fromARGB(234, 9, 104, 238)),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 4,
                    blurRadius: 14,
                    color: Color.fromARGB(255, 82, 33, 243),
                    offset: Offset(-5, 5)),
              ],
              color: const Color.fromARGB(255, 121, 50, 221)),
          child: const Center(
            child: Text(
              'Home Page',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
