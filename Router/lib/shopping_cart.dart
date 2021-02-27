import 'package:flutter/material.dart';
import 'appBar.dart';
import 'constants.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = cart;
    List<Widget> listItems = [];
    responseList.forEach(
      (post) {
        int total = post['quanlity'] * post['price'];
        listItems.add(
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 8, left: 12, right: 12),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${post['name']}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${post['brand']}',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Container(
                          width: 170,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Total price ${post['price']} x ${post['quanlity']} = $total',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/${post["image"]}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "$allPrice ฿",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          leading: IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context, 'Nope!');
              },
              icon: Icon(Icons.arrow_back, color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCart()),
                );
              },
            ),
          ],
        ),
        body: ListView(
          children: itemsData,
        ),
      ),
    );
  }
}
