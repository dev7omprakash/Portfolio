import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'Tech.dart';
import 'Projects.dart';

import 'Contact.dart';
import 'FeedBack.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo[600],
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/Projects": (context) => Projects(),
        "/Tech": (context) => Tech(),
        "/Contact": (context) => Contact(),
        "/Feedback": (context) => FeedBack(),
      },
    );
  }
}
