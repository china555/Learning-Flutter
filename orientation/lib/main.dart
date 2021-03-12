import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors/sensors.dart';

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
      debugShowCheckedModeBanner: false,
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
      // backgroundColor: Colors.indigo[900],
      backgroundColor: Colors.indigo[800],
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height) / 2 - 120),
              child: Text(
                'FootBalla wdwadawd',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber[700],
                  ),
                  child: Text(
                    '60',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: <Widget>[
      //     Container(
      //       margin: EdgeInsets.only(
      //           top: (MediaQuery.of(context).size.height) / 2 - 60),
      //       child: Text(
      //         'FootBallawddddd',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           fontSize: 100,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin:
      //           EdgeInsets.only(top: (MediaQuery.of(context).size.height / 8)),
      //       padding: EdgeInsets.all(10),
      //       child: Center(
      //         child: Container(
      //           padding: EdgeInsets.all(15),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(30),
      //             color: Colors.amber[700],
      //           ),
      //           child: Text(
      //             '60',
      //             style: TextStyle(fontSize: 20),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
