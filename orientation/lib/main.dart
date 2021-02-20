import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';
// Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Hello',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.amber),
              child: Text('60'),
            ),
          ],
        ),
        // child: Container(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,

        //     children: [
        //       Text(
        //         'Hello',
        //         style: TextStyle(
        //           fontSize: 100,
        //           color: Colors.amber,
        //         ),
        //       ),
        //       Text('60')
        //     ],
        //   ),
        // ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text(title)),
  //     body: OrientationBuilder(
  //       builder: (context, orientation) {
  //         return GridView.count(
  //           // Create a grid with 2 columns in portrait mode, or 3 columns in
  //           // landscape mode.
  //           crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
  //           // Generate 100 widgets that display their index in the List.
  //           children: List.generate(100, (index) {
  //             return Center(
  //               child: Text(
  //                 'Item $index',
  //                 style: Theme.of(context).textTheme.headline1,
  //               ),
  //             );
  //           }),
  //         );
  //       },
  //     ),
  //   );
  // }
}
