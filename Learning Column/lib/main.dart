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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('hello'),
              Text('world'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            // margin: EdgeInsets.all(30),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            // margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30.0),
            color: Colors.pink,
            child: Text('two'),
          ),
          Container(
            // margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('three'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}
