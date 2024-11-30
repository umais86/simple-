import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String email = 'umaisa86@gmail.com';

  Future<void> _lunchemail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'email',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(
        emailUri,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: WebViewConfiguration(
          headers: {'android.intent.extra.package': 'com.google.android.gm'},
        ),
      );
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  int counter = 1;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 111, 114, 114),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 83, 84, 84),
          title: Text(
            'Profile',
            style:
                TextStyle(fontSize: 32, color: Colors.white, letterSpacing: 2),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: _decrementCounter,
              child: Icon(Icons.remove),
              tooltip: 'Decrement',
            ),
            SizedBox(
              width: 56,
            ),
            FloatingActionButton(
              
              onPressed: _incrementCounter,
              
              child: Icon(Icons.add),
              tooltip: 'Increment',
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(40, 40, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/umais.jpg'),
                        radius: 50,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Text(
                  'Name',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Umais Anjum',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.amberAccent,
                      letterSpacing: 2.5),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.location_city, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  'Street #2, Shadab Colony,Bahawalpur',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.amberAccent,
                      letterSpacing: 2.5),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Level:',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  '$counter',
                  style: TextStyle(color: Colors.amberAccent, fontSize: 28),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: _lunchemail,
                  child: Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Email us',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.amberAccent,
                            letterSpacing: 2.5),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
