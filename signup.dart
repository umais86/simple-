import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/otp_screen.dart';

import 'package:flutter_assignment_0/sign.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 120, 162, 240),
        title: const Text(
          'SignUp Page',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                'assets/images/umais.jpg',
                width: 100,
                height: 100,
              ),
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                  color: Color.fromARGB(255, 96, 139, 139),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline),
                    labelText: 'Name',
                    labelStyle: const TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0)))),
            const SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined),
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0)))),
            const SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outlined),
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0)))),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ));
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                )),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have account'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    },
                    child: const Text('Sign In'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
