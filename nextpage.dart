// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        // child: Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         margin: const EdgeInsets.all(5),
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        //       Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        //       Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        //       Container(
        //         margin: EdgeInsets.all(5),
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        //       Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        //       Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        //       Container(
        //         margin: EdgeInsets.all(5),
        //         height: 100,
        //         width: 100,
        //         color: Colors.amberAccent,
        //         child: const Text(
        //           'Umais',
        //           style: TextStyle(
        //               color: Colors.white12,
        //               fontFamily: AutofillHints.birthdayDay,
        //               fontSize: 7),
        //         ),
        //       ),
        body: Center(
      child: Container(
        color: const Color.fromARGB(31, 98, 94, 94),
        width: 250,
        height: 250,
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image/appdev.png',
                fit: BoxFit.cover,
                width: 170,
                height: 150,
              )),
        ),
      ),
    ));
    //       ],
    //     ),
    //   ),
    // ));
  }
}
