import 'package:flutter/material.dart';

class GridViewRecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<GridViewRecentProducts> {
  var product_list = [
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
      "picture": "images/products/pants1.jpeg",
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
        itemCount: product_list.length,
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
              product_list[index]['name'],
              product_list[index]['picture'],
              product_list[index]['old_price'],
              product_list[index]['price']);
        });
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  SingleProduct(this.product_name, this.product_picture, this.product_old_price,
      this.product_price);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
