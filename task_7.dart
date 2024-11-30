import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class C extends StatefulWidget {
  const C({super.key});

  @override
  State<C> createState() => _CState();
}

class _CState extends State<C> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: const Icon(
          Icons.menu_outlined,
          size: 30,
        ),
        title: const Text(
          'Screen',
          style: TextStyle(
              color: Colors.black87, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 35.9,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink, width: 2.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/image/umais.jpg',
                      width: 150,
                      height: 70,
                    ),
                    Text('Umais',style: TextStyle(
                      background: Paint(),
                    )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
