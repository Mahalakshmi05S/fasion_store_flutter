import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryList(
              img_location: 'fasionimages/Cats/10.png',
              img_caption: 'Shirt',
          ),

          CategoryList(
            img_location: 'fasionimages/Cats/3.png',
            img_caption: 'Dress',
          ),

          CategoryList(
            img_location: 'fasionimages/Cats/8.png',
            img_caption: 'Pants',
          ),

          CategoryList(
            img_location: 'fasionimages/Cats/7.png',
            img_caption: 'Jacket',
          ),

          CategoryList(
            img_location: 'fasionimages/Cats/5.png',
            img_caption: 'Formals',
          ),

          CategoryList(
            img_location: 'fasionimages/Cats/9.png',
            img_caption: 'Shoes',
          ),

          CategoryList(
            img_location: 'fasionimages/Cats/2.png',
            img_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  late final String img_location;
  late final String img_caption;

  CategoryList({
    required this.img_location,
    required this.img_caption
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 120.0,
        child: ListTile(
          title: Image.asset(img_location,
          width: 60.0,
          height: 60.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(img_caption, style: new TextStyle(fontSize: 11.0), ),
          ),
        ),
      ),
    ),);
  }
}
