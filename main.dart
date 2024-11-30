import 'package:flutter/material.dart';

import 'package:flutter_assignment_0/lists_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'MyApp', home: QuotesList());
  }
}
