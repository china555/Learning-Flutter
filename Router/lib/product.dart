import 'package:flutter/material.dart';
import 'appBar.dart';
import 'constants.dart';

class Product extends StatefulWidget {
  String name;
  String image;
  int price;
  String brand;
  Product(String name, String brand, String image, int price) {
    this.name = name;
    this.image = image;
    this.brand = brand;
    this.price = price;
  }
  @override
  _ProductState createState() =>
      _ProductState(this.name, this.brand, this.image, this.price);
}

class _ProductState extends State<Product> {
  int quanlity;
  String name;
  String image;
  int price;
  String brand;

  _ProductState(String name, String brand, String image, int price) {
    this.name = name;
    this.image = image;
    this.brand = brand;
    this.price = price;
    if (cart.any((element) => element.containsValue(this.name))) {
      int index = cart.indexWhere((row) => row['name'].contains(this.name));
      print("$index");
      this.quanlity = cart[index]['quanlity'];
    } else {
      this.quanlity = 0;
    }
  }

  Object generateObject() {
    Object temp = {
      "name": this.name,
      "image": this.image,
      "price": this.price,
      "brand": this.brand,
      "quanlity": this.quanlity
    };
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(context),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "${widget.name}",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/${widget.image}",
                height: 300,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "${widget.price} ฿",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              Text("${widget.brand}"),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.orange[800],
                      onPressed: () {
                        Navigator.pop(context, 'Nope!');
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quanlity > 0) {
                                quanlity--;
                              }
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          "$quanlity",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quanlity++;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.orange[800],
                      onPressed: () {
                        if (cart
                            .any((element) => element.containsValue('$name'))) {
                          int index = cart.indexWhere(
                              (row) => row['name'].contains(this.name));
                          cart[index]['quanlity'] = this.quanlity;
                        } else {
                          cart.add(generateObject());
                        }
                        setState(() {
                          calulateallprice();
                        });
                        print(allPrice);
                        // print(FOOD_DATA[0]);
                        // print(cart);
                      },
                      child: Text(
                        'Buy',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
