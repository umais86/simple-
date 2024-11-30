import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/navbar.dart';
// import 'package:flutter_assignment_0/signup.dart';
// import 'package:flutter/widgets.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Page')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(4),
              width: 210,
              height: 210,
              color: Colors.blueGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/appdev.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(),
                  const Text(
                    'Container 1',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(),
                  const Text(
                      'lorem ipsum jasfdouwef ksdjiefd lkxjdisjrei lkxzjdpiwqdn '),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(4),
              width: 210,
              height: 210,
              color: Colors.blueGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/appdev.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(),
                  const Text(
                    'Container 2',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(),
                  const Text(
                      'lorem ipsum jasfdouwef ksdjiefd lkxjdisjrei lkxzjdpiwqdn '),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(4),
              width: 210,
              height: 210,
              color: Colors.blueGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/appdev.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(),
                  const Text(
                    'Container 3',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(),
                  const Text(
                      'lorem ipsum jasfdouwef ksdjiefd lkxjdisjrei lkxzjdpiwqdn '),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Navbar()),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
