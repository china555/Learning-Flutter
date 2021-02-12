import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.red[200]),
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text('FRAGRANCE'),
              centerTitle: true,
              actions: [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.more_vert),
              ],
              backgroundColor: Colors.pink[200],
            ),
            body: MyHomePage()));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 400.00,
            height: 400.00,
            child: Image(
              image: AssetImage("assets/image/1.png"),
              fit: BoxFit.contain,
            ),
            color: Colors.amber,
          ),
          Container(
            height: 200,
            child: ListWheelScrollView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.accessibility_new_outlined),
                      onPressed: () {
                        print('He');
                      },
                      tooltip: 'Hello',
                    ),
                    Text('What !!!'),
                  ],
                ),
                Text(
                  'Hello.... I\'m หลวงปู่เซล',
                ),
                Text(
                  'Oh shit!!!',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'ต่อยกับกูไหมสัส',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'fuck off',
                  style: TextStyle(fontSize: 20),
                ),
              ],
              itemExtent: 50,
              useMagnifier: true,
              magnification: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
