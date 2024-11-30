import 'dart:math';

import 'package:flutter/material.dart';

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuotesList> {
  final List<Quote> _quotesList = [
    Quote(
      text: "The best way to predict the future is to create it.",
      author: "Peter Drucker",
    ),
    Quote(
      text:
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      author: "Winston Churchill",
    ),
    Quote(
      text: "Don't watch the clock; do what it does. Keep going.",
      author: "Sam Levenson",
    ),
    Quote(
      text: "The secret of getting ahead is getting started.",
      author: "Mark Twain",
    ),
    Quote(
      text: "Your time is limited, don't waste it living someone else's life.",
      author: "Steve Jobs",
    ),
  ];

  Quote _currentQuote = Quote(
    text: 'Click the button to generate a quote!',
    author: '',
  );

  void _generateQuotes() {
    final random = Random();

    setState(() {
      _currentQuote = _quotesList[random.nextInt(_quotesList.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 200, 227),
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '"${_currentQuote.text}"\n\n- ${_currentQuote.author}',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: _generateQuotes,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
              child: Icon(
                Icons.refresh,
                color: Colors.white60,
              )),
        ),
      ]),
    );
  }
}

class Quote {
  late String text;

  late String author;

  Quote({required String text, required String author}) {
    this.text = text;
    this.author = author;
  }
}
