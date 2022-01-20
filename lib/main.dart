import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//My imports
import 'package:fasion_store_flutter/components/categories_listview.dart';
import 'package:fasion_store_flutter/components/products.dart';
import 'package:fasion_store_flutter/pages/cart.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    Widget image_carousel = new Container(
      height: MediaQuery.of(context).size.height/3,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('fasionimages/images/c1.jpg'),
          AssetImage('fasionimages/images/m1.jpeg'),
          AssetImage('fasionimages/images/m2.jpg'),
          AssetImage('fasionimages/images/w1.jpeg'),
          AssetImage('fasionimages/images/w3.jpeg'),
          AssetImage('fasionimages/images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.amber,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.amber,
        title: Text('fashionapp'),
        actions: <Widget>[
          new IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
          new IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          }, icon: Icon(Icons.shopping_cart, color: Colors.white,))
        ]
      ),

      drawer: new Drawer(
        child: new ListView(
          children:<Widget>[
            //Header
            new UserAccountsDrawerHeader(
                accountName: Text('Mahalakshmi'),
                accountEmail: Text('mahalakshmi@gamil.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.amber
              ),
            ),

            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.amber,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.amber,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.amber,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_basket,color: Colors.amber,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.amber,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.amber,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //Image Carousel begins here
          image_carousel,

          //Padding Widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),),),

          //Horizontal list view begings here
          HorizontalList(),

          //Padding Widget
          new Padding(padding: const EdgeInsets.all(10.0),
            child: new Text('Recent Products',style: TextStyle(fontWeight: FontWeight.bold),),),

          Container(
            height: 360.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}