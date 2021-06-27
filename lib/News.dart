import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  final String url =
      "https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=6ebdd93dc7fd4598a2020026ab59e809";
  bool load = true;
  List newsdata = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getJsonData();
    this.load = true;
  }

  Future getJsonData() async {
    var response = await http.get(Uri.parse(url));

    List data = jsonDecode(response.body)['articles'];
    setState(() {
      newsdata = data;
      load = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tech News"),
      ),
      body: Container(
        child: Center(
          child: load
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: newsdata == null ? 0 : newsdata.length,
                  itemBuilder: (context, i) {
                    return Card(
                      child: Image(
                        image: newsdata[i]['urlToImage'] != null
                            ? NetworkImage(newsdata[i]['urlToImage'])
                            : NetworkImage(
                                "https://www.pngjoy.com/pngm/135/2736064_warning-symbol-error-png-transparent-png.png"),
                      ),
                    );
                  }),
        ),
      ),
    );
  }
}
