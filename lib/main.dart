import 'package:flutter/material.dart';
import 'package:quize_app/Congrats/congrets.dart';
import 'package:quize_app/Qustion/Qustion_scrren.dart';

import 'Home/Home_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home_scrren(),
        "Question" : (context) => Qustion_scrren(),
        "congrets" : (context) => Congrets(),
      },
    ),
  );
}