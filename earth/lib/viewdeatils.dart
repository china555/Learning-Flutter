import 'package:flutter/material.dart';
import 'main.dart';

Color cobalt = const Color.fromRGBO(0, 71, 171, 10);
Color palePink = const Color.fromRGBO(250, 218, 221, 10);


class DetailScreen extends StatelessWidget {
  String name,image,details;
  int price;

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Route route = MaterialPageRoute(
            builder: (context) => MyHomePage());
        Navigator.push(context, route);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Thank you"),
      content: Text("We appreciate the support. We hope to hear from you again soon!"),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  DetailScreen(this.name,this.price,this.image,this.details);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: palePink,
      appBar: AppBar(
        backgroundColor: cobalt,
        title : Text("View Details") ,
      ) ,
      body: Padding(
        padding: EdgeInsets.all (16.0) ,
        child: Column(
          children: [
            Text("$name",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            Image.asset(
              "assets/images/$image",
              height: 200,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Price: $price",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Text("$details"),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  RaisedButton(
                      color: cobalt,
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => MyHomePage());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Go Back',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:   RaisedButton(
                      color: cobalt,
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      child: Text(
                        'Buy $price',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        )
      ) ,
    ) ;
  }
}