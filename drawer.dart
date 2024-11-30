import 'package:flutter/material.dart';
import 'package:flutter_assignment_0/profile.dart';
import 'package:flutter_assignment_0/sign.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 130, 194, 246),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Menu bar',
          style:
              TextStyle(color: Colors.white, fontSize: 26, letterSpacing: 1.5),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white60.withOpacity(0.85),
        width: 215,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('assets/images/umais.jpg'),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Umais',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                              shadows: [
                                BoxShadow(
                                    blurRadius: 1.5,
                                    color: Colors.black,
                                    offset: Offset(1, 1))
                              ]),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                          child: Row(
                            children: [
                              Icon(Icons.mail_outline),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                  child: Text(
                                'umaisa86@gmail.com',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey,
                                ),
                                overflow: TextOverflow.visible,
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Screen1'),
              leading: Icon(
                Icons.home,
                size: 18,
                color: Colors.blue.withOpacity(0.5),
              ),
              trailing: Icon(
                Icons.navigate_next,
                size: 18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Screen2'),
              leading: Icon(
                Icons.settings,
                size: 18,
                color: Colors.blue.withOpacity(0.5),
              ),
              trailing: Icon(
                Icons.navigate_next,
                size: 18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Screen3'),
              leading: Icon(
                Icons.help,
                size: 18,
                color: Colors.blue.withOpacity(0.5),
              ),
              trailing: Icon(
                Icons.navigate_next,
                size: 18,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Screen4'),
              leading: Icon(
                Icons.logout,
                size: 18,
                color: Colors.blue.withOpacity(0.5),
              ),
              trailing: Icon(
                Icons.navigate_next,
                size: 18,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text(' Screen '),
        ),
      ),
    );
  }
}
