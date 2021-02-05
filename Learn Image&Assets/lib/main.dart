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
        // don't need to add dependency in yaml
        child: Image.asset('assets/space.jpg'),
        // child: Image(
        //   image: AssetImage('assets/space.jpg'),
        //   // image: NetworkImage(
        //   //   'https://4.bp.blogspot.com/-W0_HZx9NWfI/XD45qcBbaII/AAAAAAAAAn4/paWYCWR06l092c0vcBV2G9HAChXB3nhRwCKgBGAs/w1080-h1920-c/astronaut-space-13-4k.jpg',
        //   // ),
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
