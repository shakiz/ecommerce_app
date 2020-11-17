import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/product_details.dart';

class GridViewRecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<GridViewRecentProducts> {
  var productList = [
    {
      "name": "Gents Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 40
    },
    {
      "name": "Ladies Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 130,
      "price": 54
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 220,
      "price": 150
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 130,
      "price": 52
    },
    {
      "name": "High Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 140,
      "price": 30
    },
    {
      "name": "Low Hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 60
    },
    {
      "name": "Gent Pant",
      "picture": "images/products/pants1.jpg",
      "old_price": 1120,
      "price": 700
    },
    {
      "name": "Ladies Pant",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 20,
      "price": 10
    },
    {
      "name": "Skut Girls",
      "picture": "images/products/skt1.jpeg",
      "old_price": 1210,
      "price": 50
    },
    {
      "name": "Skut Girls Latest",
      "picture": "images/products/skt2.jpeg",
      "old_price": 520,
      "price": 50
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
              productList[index]['name'],
              productList[index]['picture'],
              productList[index]['old_price'],
              productList[index]['price']);
        });
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct(this.productName, this.productPicture, this.productOldPrice,
      this.productPrice);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 4),
      child: Card(
        color: Colors.white,
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductDetails(productName,
                        productPicture, productOldPrice, productPrice)));
              },
              child: GridTile(
                child: Image.asset(
                  productPicture,
                ),
                footer: Container(
                    height: 40,
                    alignment: Alignment.center,
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            productName,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text(
                            "\$$productPrice",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrangeAccent),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Text(
                            "\$$productOldPrice",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
