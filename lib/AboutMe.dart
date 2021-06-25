import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  final String name;
  const AboutMe({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Me")),
      body: Center(child: Text(name)),
    );
  }
}
