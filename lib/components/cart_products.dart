import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_added_to_cart = [
    {
      "name" : "Sequel Frock",
      "picture" : "fasionimages/Products/dress4.jpg",
      "old_price" : 3800,
      "price" : 3400,
      "size" : "S",
      "color": "Gold",
      "quantity": "1",
    },{
      "name" : "Sequel Heel",
      "picture" : "fasionimages/Products/heel2.jpg",
      "old_price" : 2300,
      "price" : 1700,
      "size" : "8",
      "color": "Gold",
      "quantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, index){
      return Single_cart_product(
        cart_prod_name: Products_added_to_cart[index]["name"],
        cart_prod_color: Products_added_to_cart[index]["color"],
        cart_prod_picture: Products_added_to_cart[index]["picture"],
        cart_prod_price: Products_added_to_cart[index]["price"],
        cart_prod_qty: Products_added_to_cart[index]["quantity"],
        cart_prod_size: Products_added_to_cart[index]["size"]
      );
    }, itemCount: 3,);
  }
}

class Single_cart_product extends StatelessWidget {
  late final cart_prod_name;
  late final cart_prod_picture;
  late final cart_prod_price;
  late final cart_prod_size;
  late final cart_prod_color;
  late final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_picture,
    this.cart_prod_qty,
    this.cart_prod_size
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Card(
        child: ListTile(
          // Leading Section
          leading: new Image.asset(cart_prod_picture, width: 95.0, height: 95.0,),
          title: new Text(cart_prod_name),
          subtitle: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  // Size section
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Size: "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_size, style: TextStyle(color: Colors.amber),),
                  ),

                  // Color section
                  new Padding(padding: const EdgeInsets.fromLTRB(10.0, 4.0, 4.0, 4.0),
                    child: new Text("Color:"),),

                  Padding(padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_prod_color, style: TextStyle(color: Colors.amber),),
                  ),
                ],
              ),

              // Product  Price Section
              new Container(
                alignment: Alignment.topLeft,
                child: new Text(
                  "\$${cart_prod_price}",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber
                  ),),
              )

            ],
          ),
          // trailing: new Column(
          //   children: <Widget>[
          //     new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
          //     new Text(cart_prod_qty),
          //     new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          //   ],
          // ),

        ),
      ),
    );
  }
}

