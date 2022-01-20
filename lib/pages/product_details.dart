import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fasion_store_flutter/main.dart';


class ProductDetails extends StatefulWidget {
  late final product_detail_name;
  late final product_detail_picture;
  late final product_detail_old_price;
  late final product_detail_new_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
}); 

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.amber,
          title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage() ));},
            child: Text('fashionapp', textAlign: TextAlign.center,),
          ),
          actions: <Widget>[
            new IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
            //new IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.white,))
          ]
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
        height: 300.0,
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: Image.asset(widget.product_detail_picture),
          ),
          footer: new Container(
            color: Colors.white70,
            height: 50.0,
            padding: EdgeInsets.all(1.0),
            child: ListTile(
              leading: new Text(widget.product_detail_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              title: new Row(
                children: <Widget>[
                  Expanded(child: new Text("\$${widget.product_detail_old_price}", style: TextStyle(color: Colors.black45, decoration: TextDecoration.lineThrough, fontSize: 14.0),)),
                  Expanded(child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold, fontSize: 18.0),)),
                ],
              ),
            ),
          ),
        ),
    ),

    //========= the first buttons ========//

    Row(
      children: <Widget>[

        //======== the size button =======
        Expanded(child: MaterialButton(onPressed: (){
          showDialog(context: context, 
              builder: (context){
                return new AlertDialog(
                  title: new Text("Size"),
                  content: new Text("Choose the size"),
                  actions: <Widget>[
                    new MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                    child: new Text("close"),)
                  ],
                );
              });
        },
        color: Colors.white,
        textColor: Colors.grey,
          elevation: 0.2,
          child: Row(
            children: <Widget>[
              Expanded(child: new Text("Size")),
              Expanded(child: new Icon(Icons.arrow_drop_down)),
            ],
          ),
        ),
        ),

        //======== the color button =======
        Expanded(child: MaterialButton(onPressed: (){
          showDialog(context: context,
              builder: (context){
                return new AlertDialog(
                  title: new Text("Color"),
                  content: new Text("Choose a color"),
                  actions: <Widget>[
                    new MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                      child: new Text("close"),)
                  ],
                );
              });
        },
          color: Colors.white,
          textColor: Colors.grey,
          elevation: 0.2,
          child: Row(
            children: <Widget>[
              Expanded(child: new Text("Color")),
              Expanded(child: new Icon(Icons.arrow_drop_down)),
            ],
          ),
        ),
        ),

        //======== the qty button =======
        Expanded(child: MaterialButton(onPressed: (){
          showDialog(context: context,
              builder: (context){
                return new AlertDialog(
                  title: new Text("Quantity"),
                  content: new Text("Choose the Quantity"),
                  actions: <Widget>[
                    new MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },
                      child: new Text("close"),)
                  ],
                );
              });
        },
          color: Colors.white,
          textColor: Colors.grey,
          elevation: 0.2,
          child: Row(
            children: <Widget>[
              Expanded(child: new Text("Qty")),
              Expanded(child: new Icon(Icons.arrow_drop_down)),
            ],
          ),
        ),
        ),
        ],
       ),

          //========= the Second button ========//

          Row(
            children: <Widget>[

              //======== the size button =======
              Expanded(child: MaterialButton(onPressed: (){},
                color: Colors.amber,
                textColor: Colors.black,
                elevation: 0.2,
                child: new Text("Buy now!")
               ),
              ),
              new IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.amber,)),
              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.amber,)),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Festive Collections"),)
            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Products"),
          ),
          // Similar products section
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }

}


class Similar_products extends StatefulWidget {

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
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
      return Similar_single_prod(
        prod_name: product_list[index]['name'],
        prod_picture: product_list[index]['picture'],
        prod_old_price: product_list[index]['old_price'],
        prod_price: product_list[index]['price'],
      );
    }
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  late final prod_name;
  late final prod_picture;
  late final prod_old_price;
  late final prod_price;

  Similar_single_prod({
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