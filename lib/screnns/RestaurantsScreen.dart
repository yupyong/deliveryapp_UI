import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';

import '../models/food.dart';
import '../widgets/rating_stars.dart';

class RestaurantsScreen extends StatefulWidget {
  RestaurantsScreen({required this.restaurant});

  final Restaurant restaurant;

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  buildMenuItem(Food menuItem) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 170.0,
            height: 170.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  menuItem.imageUrl,
                ),
              ),
            ),
          ),
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black87.withOpacity(0.5),
                    Colors.black54.withOpacity(0.5),
                    Colors.black45.withOpacity(0.5),
                    Colors.black38.withOpacity(0.5),
                  ]),
            ),
          ),
          Positioned(
            bottom: 70,
            child: Column(
              children: [
                Text(
                  menuItem.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24),
                ),
                Text(
                  '￥${menuItem.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  image: AssetImage(widget.restaurant.imageUrl),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  //こいつでデバイスの中央に寄せる
                  fit: BoxFit.cover,
                  //そんでこいつで画面に合わせる
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        size: 35.0,
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingStars(widget.restaurant.rating),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.restaurant.address),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RestaurantButton('レビュー'),
              RestaurantButton('連絡する'),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Center(
            child: Text(
              'メニュー',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              //ここのpaddingどのようにレイアウトに影響でるか
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return buildMenuItem(food);
              }),
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantButton extends StatelessWidget {
  RestaurantButton(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0))),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30)),
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor)),
    );
  }
}
