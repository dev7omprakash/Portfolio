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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(60),
            ),
            Image(image: AssetImage("Images/Avtar.png")),
            Text(
              "O m  P r a k a s h",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "* F l u t t e r  D e v e l o p e r *",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
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
