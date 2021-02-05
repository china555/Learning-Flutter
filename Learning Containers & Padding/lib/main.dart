import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'my first app',
          style: TextStyle(fontFamily: 'HachiMaruPop'),
        ),
        backgroundColor: Colors.pink[200],
        centerTitle: true,
      ),
      // body: Padding(
      //   padding: EdgeInsets.all(30.0),
      //   child: Text("hello"),
      // ),
//2
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 69, 54, 26),
        margin: EdgeInsets.all(30),
        // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        color: Colors.lightGreen[200],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}
