import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/sign.dart';

class B extends StatelessWidget {
  const B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 238, 88),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Task 4',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w100),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/image/appdev.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Umais Anjum',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Dev',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  letterSpacing: 5,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 12, 11, 11),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.white, style: BorderStyle.solid))),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Phone',
                    prefixIcon: const Icon(
                      Icons.phone_android_outlined,
                      color: Color.fromARGB(255, 12, 11, 11),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.white, style: BorderStyle.solid))),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                icon: const Icon(Icons.forward),
                label: const Text('Next'))
          ],
        ),
      ),
    );
  }
}
