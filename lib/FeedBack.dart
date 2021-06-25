import 'package:flutter/material.dart';
import 'AboutMe.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  String name = "", email = "", feedback = "";
  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  _send() {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AboutMe(
          name: name,
        );
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Feedback")),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image(
                  width: 500,
                  height: 300,
                  image: AssetImage("Images/feedback.png"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      String s = input.toString();
                      if (s.isEmpty) {
                        return "Re-Enter Name";
                      }
                    },
                    onSaved: (input) {
                      name = input!;
                    },
                    decoration: InputDecoration(labelText: "Name"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input) {
                      String s = input.toString();
                      if (s.isEmpty) {
                        return "Re-Enter Email";
                      }
                    },
                    onSaved: (input) {
                      email = input!;
                    },
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    maxLength: 1000,
                    validator: (input) {
                      String s = input.toString();
                      if (s.isEmpty) {
                        return "Please enter your valuable feedback!";
                      }
                    },
                    onSaved: (input) {
                      feedback = input!;
                    },
                    decoration: InputDecoration(labelText: "Feedback"),
                  ),
                ),
                ButtonTheme(
                    minWidth: 100,
                    height: 40,
                    child: RaisedButton(
                      color: Colors.blueGrey,
                      child: Text("Send Feedback"),
                      onPressed: _send,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
