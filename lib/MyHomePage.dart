import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.blue[300],
              ),
              width: double.infinity,
              height: 195,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "🖐Nice to meet you",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 8.0,
                            color: Colors.blue,
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        letterSpacing: 1,
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Image(
                    height: 120,
                    image: AssetImage("Images/profile.png"),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Text(
                    "OM PRAKASH",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        letterSpacing: 3,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.blue,
                            offset: Offset(8.0, 8.0),
                          ),
                        ],
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 30,
                    decoration:
                        BoxDecoration(color: Colors.grey[300], boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " OH HELLO THERE, ",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(7),
                    child: Text(
                      "My name is Om Prakash. You can call me Om. I am an Android developer, who enjoy working on mobile apps at beginer to intermediate level. I am pursuing my bachelors from Sant longowal institute of engineering and technology.",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration:
                        BoxDecoration(color: Colors.grey[300], boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " PROFESSIONAL ANDROID DEVELOPER ",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(7),
                    child: Text(
                      "When i came to college, I explored many of technology but the idea to become Android developer stuck with me, so I began to study Flutter and Dart from Learncodeonline.in and after two months i am working on this portfolio.",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration:
                        BoxDecoration(color: Colors.grey[300], boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " HOBBY ",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(7),
                    child: Text(
                      "Other than making Android apps, I love to solve Math and DSA problems. I have a stong intrest in playing card and travelling ",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration:
                        BoxDecoration(color: Colors.grey[300], boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " WHAT I AM LOOKING FOR ",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(7),
                    child: Text(
                      "I am open to work to expand mt Android knowledge, and would love to join any teams that share values in Android development.",
                      style: GoogleFonts.kanit(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Om Prakash"),
                accountEmail: Text("omprakash72810@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text("O P"))),
            ListTile(
              title: Text("Technology"),
              trailing: Icon(Icons.code),
              onTap: () => Navigator.of(context).pushNamed("/Tech"),
            ),
            ListTile(
              title: Text("AboutMe"),
              trailing: Icon(Icons.person_add),
              onTap: () => Navigator.of(context).pushNamed("/AboutMe"),
            ),
            ListTile(
              title: Text("Contact"),
              trailing: Icon(Icons.contact_page),
              onTap: () => Navigator.of(context).pushNamed("/Contact"),
            ),
            ListTile(
              title: Text("Cancel"),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
