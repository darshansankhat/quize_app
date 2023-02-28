import 'dart:math';

import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              //image
              Container(
                height: 725,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  child: Image.asset(
                    "assets/image/images.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //person
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black26),
                  child: Image.asset("assets/image/per.png"),
                ),
              ),
              //name
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Text(
                  "Darshan",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              //welcome
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Image.asset("assets/image/wel.png"),
              ),
            ],
          ),
          //start
          SizedBox(height: 50),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "Question");
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.purple,
                      Colors.pinkAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Start",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
          //text
          SizedBox(height: 20),
          Text(
            "Press Start to Start Quize",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
