import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_assignment_0/new.dart';
// import 'package:flutter_assignment_0/nextpage.dart';
// import 'package:flutter_assignment_0/nextpage.dart';
// import 'package:flutter_assignment_0/nextpage.dart';
// import 'package:flutter_assignment_0/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SignIn Page',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 120, 162, 240),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/umais.jpg',
                        ),
                        fit: BoxFit.cover)),
              ),
              const Text('Sign In',
                  style: TextStyle(
                    color: Color.fromRGBO(68, 138, 255, 1),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Next()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
