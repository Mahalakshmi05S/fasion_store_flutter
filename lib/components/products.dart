import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fasion_store_flutter/pages/product_details.dart';

class Products extends StatefulWidget {

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name" : "Blazer",
      "picture" : "fasionimages/Products/blazer4.jpg",
      "old_price" : 1800,
      "price" : 1555,
    },
    {
      "name" : "Dark Blazer",
      "picture" : "fasionimages/Products/blazer5.jpg",
      "old_price" : 1900,
      "price" : 1455,
    },
    {
      "name" : "Grey Blazer",
      "picture" : "fasionimages/Products/blazer3.jpg",
      "old_price" : 2300,
      "price" : 1855,
    },
    {
      "name" : "Black Frock",
      "picture" : "fasionimages/Products/dress11.jpg",
      "old_price" : 1200,
      "price" : 999,
    },
    {
      "name" : "Floral Frock",
      "picture" : "fasionimages/Products/dress22.jpg",
      "old_price" : 1900,
      "price" : 1355,
    },
    {
      "name" : "Formals",
      "picture" : "fasionimages/Products/dress3.jpg",
      "old_price" : 3400,
      "price" : 2800,
    },
    {
      "name" : "Sequel Frock",
      "picture" : "fasionimages/Products/dress4.jpg",
      "old_price" : 3800,
      "price" : 3400,
    },
    {
      "name" : "Peach Heel",
      "picture" : "fasionimages/Products/heel1.jpg",
      "old_price" : 2900,
      "price" : 2555,
    },{
      "name" : "Sequel Heel",
      "picture" : "fasionimages/Products/heel2.jpg",
      "old_price" : 2300,
      "price" : 1700,
    },{
      "name" : "White Heel",
      "picture" : "fasionimages/Products/heel3.jpg",
      "old_price" : 4300,
      "price" : 2800,
    },{
      "name" : "Black Heel",
      "picture" : "fasionimages/Products/heel4.jpg",
      "old_price" : 2400,
      "price" : 2200,
    },{
      "name" : "Pink Pant",
      "picture" : "fasionimages/Products/pant1.jpg",
      "old_price" : 1200,
      "price" : 999,
    },{
      "name" : "Sandal Pant",
      "picture" : "fasionimages/Products/pant2.jpg",
      "old_price" : 2600,
      "price" : 2155,
    },{
      "name" : "Orange Pant",
      "picture" : "fasionimages/Products/pant3.jpg",
      "old_price" : 2450,
      "price" : 1800,
    },{
      "name" : "Black Pant",
      "picture" : "fasionimages/Products/pant4.jpg",
      "old_price" : 2000,
      "price" : 1400,
    },{
      "name" : "Red Shoe",
      "picture" : "fasionimages/Products/shoe4.jpg",
      "old_price" : 1800,
      "price" : 1555,
    },{
      "name" : "Black Shoe",
      "picture" : "fasionimages/Products/shoe3.jpg",
      "old_price" : 1900,
      "price" : 1200,
    },{
      "name" : "Green Shoe",
      "picture" : "fasionimages/Products/shoe2.jpg",
      "old_price" : 2800,
      "price" : 2455,
    },
    {
      "name" : "Red Shoe",
      "picture" : "fasionimages/Products/shoe11.jpg",
      "old_price" : 1800,
      "price" : 1555,
    },

    {
      "name" : "Yellow Skirt",
      "picture" : "fasionimages/Products/skt1.jpg",
      "old_price" : 2500,
      "price" : 1900,
    },
    {
      "name" : "White Skirt",
      "picture" : "fasionimages/Products/skt2.jpg",
      "old_price" : 1280,
      "price" : 999,
    },
    {
      "name" : "Checkd Skirt",
      "picture" : "fasionimages/Products/skt3.jpg",
      "old_price" : 3200,
      "price" : 2700,
    },
    {
      "name" : "Black Skirt",
      "picture" : "fasionimages/Products/skt4.jpg",
      "old_price" : 1700,
      "price" : 1555,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
    }
    );
  }
}

class Single_prod extends StatelessWidget {
  late final prod_name;
  late final prod_picture;
  late final prod_old_price;
  late final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails(
              product_detail_name: prod_name,
              product_detail_new_price: prod_price,
              product_detail_old_price: prod_old_price,
              product_detail_picture: prod_picture,
            ))),
            
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  height: 40.0,
                  child: new Row(children: <Widget>[
                    Expanded(
                        child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),
                    
                    new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],),

                  // alignment: Alignment.centerLeft,
                  // padding: EdgeInsets.all(1.5),
                  // child: ListTile(
                  //   leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.5),),
                  //   title: Text("\$$prod_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontSize: 15.0),textAlign: TextAlign.left,),
                  //   subtitle: Text("\$$prod_old_price", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough, fontSize: 13.5),textAlign: TextAlign.left,),
                  // ),
                ),
                child: Image.asset(prod_picture,fit: BoxFit.cover,)),
          ),
        ),
      ),
    );

  }
}
