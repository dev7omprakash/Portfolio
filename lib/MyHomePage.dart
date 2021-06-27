import 'dart:ui';
import 'package:flutter/material.dart';
import 'Profile.dart';

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
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 22, letterSpacing: 3),
        ),
      ),
      body: Profile(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Om Prakash",
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 2,
                    )),
                accountEmail: Text("omprakash72810@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 1,
                    )),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("O P",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        )))),
            ListTile(
              title: Text("Technology", style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.code),
              onTap: () => Navigator.of(context).pushNamed("/Tech"),
            ),
            ListTile(
              title: Text("Projects", style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.work),
              onTap: () => Navigator.of(context).pushNamed("/Projects"),
            ),
            ListTile(
              title: Text("Contact", style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.contact_page),
              onTap: () => Navigator.of(context).pushNamed("/Contact"),
            ),
            ListTile(
                title: Text("Feedback", style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.feedback),
                onTap: () => Navigator.of(context).pushNamed("/Feedback")),
            ListTile(
                title: Text("Tech News", style: TextStyle(fontSize: 17)),
                trailing: Icon(Icons.live_tv),
                onTap: () => Navigator.of(context).pushNamed("/News")),
            ListTile(
              title: Text("Cancel", style: TextStyle(fontSize: 17)),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
