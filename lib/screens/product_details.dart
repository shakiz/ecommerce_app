import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  ProductDetails(this.productName, this.productPicture, this.productOldPrice,
      this.productPrice);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(widget.productName),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 240,
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productPicture),
              )),
          Container(
            child: Text("${widget.productOldPrice}"),
          ),
          Container(
            child: Text("${widget.productPrice}"),
          ),
        ],
      ),
    );
  }
}
