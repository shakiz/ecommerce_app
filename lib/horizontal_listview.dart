import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemCategory(
              image_location: "images/categories/accessories.png",
              image_caption: "Accessories"),
          ItemCategory(
              image_location: "images/categories/dress.png",
              image_caption: "Dress"),
          ItemCategory(
              image_location: "images/categories/formal.png",
              image_caption: "Formal"),
          ItemCategory(
              image_location: "images/categories/informal.png",
              image_caption: "Informal"),
          ItemCategory(
              image_location: "images/categories/jeans.png",
              image_caption: "Jeans"),
          ItemCategory(
              image_location: "images/categories/shoe.png",
              image_caption: "Shoe"),
          ItemCategory(
              image_location: "images/categories/tshirt.png",
              image_caption: "T-Shirt")
        ],
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  final String image_location;
  final String image_caption;

  ItemCategory({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, bottom: 4, right: 8),
      width: 108,
      child: Align(
        alignment: Alignment.topCenter,
        child: Card(
          elevation: 4,
          child: Container(
            margin: EdgeInsets.only(top: 4),
            child: InkWell(
              onTap: () {},
              child: ListTile(
                title: Image.asset(
                  image_location,
                  width: 108,
                  height: 32,
                  alignment: Alignment.center,
                ),
                subtitle: Align(
                  alignment: Alignment.topCenter,
                  child: Text(image_caption),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
