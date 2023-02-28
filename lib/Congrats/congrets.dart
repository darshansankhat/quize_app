import 'package:flutter/material.dart';

class Congrets extends StatefulWidget {
  const Congrets({Key? key}) : super(key: key);

  @override
  State<Congrets> createState() => _CongretsState();
}

class _CongretsState extends State<Congrets> {
  @override
  Widget build(BuildContext context) {
    int a = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/win.png"),
            SizedBox(height: 10),
            Text("$a /7",style: TextStyle(color: Colors.red,fontSize: 50),)
          ],
        ),
      ),
    );
  }
}

