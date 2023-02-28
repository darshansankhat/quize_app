import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quize_app/Congrats/congrets.dart';

class Qustion_scrren extends StatefulWidget {
  const Qustion_scrren({Key? key}) : super(key: key);

  @override
  State<Qustion_scrren> createState() => _Qustion_scrrenState();
}

class _Qustion_scrrenState extends State<Qustion_scrren> {
  int i = 0;
  int a = 1;
  List qelist = [
    "Doler Is Indian Corensiy",
    "India Is Biggest Country In World",
    "Surat Is Cleanest City Of Gujarat",
    "Surat Is It Hube Of India",
    "U.P Is Smolest State Of India",
    "Rupic are Top Corensiy of The World",
    "Narendra Modi Is pm Of India",
  ];
  List anslist = [
    false,
    false,
    true,
    true,
    false,
    false,
    true,
  ];
  List uanslist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start Question"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(pi / 2),
            colors: [
              Colors.blue.shade400,
              Colors.purple.shade400,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(
              "${qelist[i]}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            //true
            SizedBox(height: 200),
            Darshan("True", Icon(Icons.done)),
            SizedBox(height: 30),
            Darshan("False", Icon(Icons.close)),
            SizedBox(height: 30),
            Visibility(
              visible: uanslist.length == 7 ? true : false,
              child: Darshan("Result", Icon(Icons.present_to_all)),
            ),
            //True(true),
            // SizedBox(
            //   height: 50,
            //   width: 180,
            //   child: ElevatedButton.icon(
            //       onPressed: () {},
            //       icon: Icon(Icons.done, size: 18),
            //       label: Text(
            //         "True",
            //         style: TextStyle(color: Colors.white, fontSize: 18),
            //       ),),
            // ),
          ],
        ),
      ),
    );
  }

  Widget Darshan(String data, Icon i1) {
    return SizedBox(
      height: 50,
      width: 180,
      child: ElevatedButton.icon(
        onPressed: () {
          setState(() {
            if (i < qelist.length-1 ) {
              setState(() {
                i++;
              });
            }

             if (i < qelist.length && data == "True") {
               uanslist.add(true);
             } else if((i < qelist.length && data == "False")) {
               uanslist.add(false);
           }
              print(uanslist);
              if (data == "Result") {

                  setState(() {
                    Navigator.pushNamed(context, "congrets",arguments: a);
                  });

                for (i = 0; i < anslist.length; i++) {
                  if (anslist[i] == uanslist[i]) {
                    setState(() {
                      a++;
                    });
                  }
                }
              }
          });
        },
        icon: i1,
        label: Text(
          "$data",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

// Widget True(bool data,String icon) {
//   return Container(
//     height: 50,
//     width: 180,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       gradient: LinearGradient(
//         colors: [
//           Colors.blue,
//           Colors.purple,
//           Colors.pinkAccent,
//         ],
//       ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon,color: Colors.white,),
//         SizedBox(width: 10),
//         Text(
//           "$data",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//           ),
//         ),
//       ],
//     ),
//   );
// }
}
