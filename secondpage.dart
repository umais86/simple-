import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 194, 245),
        title: const Text(
          'Second Page',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              width: 250,
              height: 250,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 88, 114, 200)),
              child: const Center(
                child: Text(
                  'Container 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 14),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(15),
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 88, 114, 200)),
                child: const Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 14),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
