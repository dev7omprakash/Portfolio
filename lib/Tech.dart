import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tech extends StatefulWidget {
  const Tech({Key? key}) : super(key: key);

  @override
  _TechState createState() => _TechState();
}

class _TechState extends State<Tech> {
  List<String> image = [];
  AssetImage ando = AssetImage("Images/ando.png");
  AssetImage flutter = AssetImage("Images/flutter.png");
  AssetImage dart = AssetImage("Images/dart.png");
  AssetImage mongodb = AssetImage("Images/mongodb.png");
  AssetImage firebase = AssetImage("Images/firebase.png");
  AssetImage java = AssetImage("Images/java.png");
  AssetImage git = AssetImage("Images/git.png");
  AssetImage github = AssetImage("Images/github.png");
  AssetImage vs = AssetImage("Images/vs.png");
  AssetImage win = AssetImage("Images/win.png");

  @override
  void initState() {
    super.initState();
    this.image = [
      "ando",
      "flutter",
      "dart",
      "java",
      "mongodb",
      "git",
      "github",
      "firebase",
      "vs",
      "win"
    ];
  }

  AssetImage getImage(int ind) {
    String cur = this.image[ind];
    switch (cur) {
      case "ando":
        return ando;
      case "flutter":
        return flutter;
      case "java":
        return java;
      case "dart":
        return dart;
      case "mongodb":
        return mongodb;
      case "git":
        return git;
      case "github":
        return github;
      case "vs":
        return vs;
      case "firebase":
        return firebase;
      default:
        return win;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Technology"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[200], boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: 10.0,
                ),
              ]),
              child: Text(
                "Technoloy, I am using",
                style: GoogleFonts.kanit(
                  textStyle: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (context, i) {
                  return SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                      fit: BoxFit.cover,
                      image: this.getImage(i),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
