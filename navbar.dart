import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/secondpage.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[400],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Navbar',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Container(
            height: 120,
            width: 370,
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Notification Column
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24.0,
                      backgroundColor: Colors.pinkAccent[100],
                      child:
                          const Icon(Icons.check_circle, color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    const Text("Notification",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                const SizedBox(width: 32.0),
                // Message Column
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24.0,
                      backgroundColor: Colors.pinkAccent[100],
                      child: const Icon(Icons.message, color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    const Text("Message",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
                const SizedBox(width: 32.0),
                // Favourite Column
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24.0,
                      backgroundColor: Colors.pinkAccent[100],
                      child: const Icon(Icons.favorite, color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    const Text("Favourite",
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Secondpage()));
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
