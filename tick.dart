import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/homepage.dart';

class Tick extends StatelessWidget {
  const Tick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Task Random',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Icon(
              Icons.check_circle,
              size: 130,
              color: Colors.green,
            ),
            const Text(
              'Congratulations',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Your account is ready to use'),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: Text('Go to Home'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                )),
          ],
        ),
      ),
    );
  }
}
