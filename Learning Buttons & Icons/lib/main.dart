import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        backgroundColor: Colors.pink[200],
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
            onPressed: () {
              print('Click me');
            },
            icon: Icon(Icons.alternate_email),
            color: Colors.amber),
        // child: RaisedButton.icon(
        //   onPressed: () {},
        //   icon: Icon(Icons.mail),
        //   label: Text('mail me'),
        //   color: Colors.amber,
        // ),
        // child: FlatButton(
        //   onPressed: () {
        //     print('You click me');
        //   },
        //   child: Text('Click me'),
        //   color: Colors.lightBlue[200],
        // ),
        // child: RaisedButton(
        //   onPressed: () {},
        //   child: Text('Click me'),
        //   color: Colors.lightBlue[200],
        // ),
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.pink[500],
      ),
    );
  }
}
