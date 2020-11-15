import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_app/ux_utils/horizontal_listview.dart';
import 'package:ecommerce_app/ux_utils/gridview_recent_products.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg')
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Gram Bazar"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Sakhawat Hossain"),
              accountEmail: Text("shakil.py@gmail.com"),
              currentAccountPicture: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.deepOrangeAccent),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(
                  Icons.category,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //region carousel
          image_carousel,
          //endregion

          //region padding and category text
          Container(
            margin: EdgeInsets.only(left: 2, top: 8),
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ),
          ),
          //endregion

          //region horizontal listView for categories
          Container(
              margin: EdgeInsets.only(top: 4), child: HorizontalListView()),
          //endregion

          //region padding and recent product text
          Container(
            margin: EdgeInsets.only(left: 2, top: 8),
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "Recent Products",
                style: TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ),
          ),
          //endregion

          //region gridView of recent products
          Container(
              margin: EdgeInsets.only(top: 4), child: GridViewRecentProducts()),
          //endregion
        ],
      ),
    );
  }
}
