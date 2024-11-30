import 'package:flutter/material.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const Icon(
          Icons.menu_outlined,
          size: 35,
          color: Colors.white,
        ),
        title: const Text(
          'Design',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.end,
        ),
        titleSpacing: 0.5,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.person_outlined,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Dashboard',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Last Uptate:15 Oct 2024',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: double.infinity,
              height: 450,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 222, 215, 215),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz_outlined,
                              size: 40,
                            ),
                            Text(
                              'Mcqs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 222, 215, 215),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz_outlined,
                              size: 40,
                            ),
                            Text(
                              'Mcqs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 222, 215, 215),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz_outlined,
                              size: 40,
                            ),
                            Text(
                              'Mcqs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 222, 215, 215),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz_outlined,
                              size: 40,
                            ),
                            Text(
                              'Mcqs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 222, 215, 215),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz_outlined,
                              size: 40,
                            ),
                            Text(
                              'Mcqs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 222, 215, 215),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ]),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz_outlined,
                              size: 40,
                            ),
                            Text(
                              'Mcqs',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
