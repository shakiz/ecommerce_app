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
      backgroundColor: Colors.white,
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
                child: Image.asset(widget.productPicture),
              )),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              widget.productName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              "Old Price : \$${widget.productOldPrice}",
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.black54),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8, top: 4),
            child: Text(
              "Current Price : \$${widget.productPrice}",
              style: TextStyle(
                  color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: IconButton(
                          icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Color"),
                    ),
                    Expanded(
                      child: IconButton(
                          icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Quantity"),
                    ),
                    Expanded(
                      child: IconButton(
                          icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
                    )
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              )),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.deepOrangeAccent,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.deepOrangeAccent,
                  ),
                  onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
