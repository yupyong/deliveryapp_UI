// Food
import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';

final _burrito =
    Food(imageUrl: 'assets/images/burrito.jpg', name: 'ブリトー', price: 600);
final _steak =
    Food(imageUrl: 'assets/images/steak.jpg', name: 'ステーキ', price: 1700);
final _pasta =
    Food(imageUrl: 'assets/images/pasta.jpg', name: 'パスタ', price: 1000);
final _ramen =
    Food(imageUrl: 'assets/images/ramen.jpg', name: 'ラーメン', price: 700);
final _pancakes =
    Food(imageUrl: 'assets/images/pancakes.jpg', name: 'パンケーキ', price: 800);
final _burger =
    Food(imageUrl: 'assets/images/burger.jpg', name: 'バーガー', price: 600);
final _pizza =
    Food(imageUrl: 'assets/images/pizza.jpg', name: 'ピザ', price: 800);
final _salmon =
    Food(imageUrl: 'assets/images/salmon.jpg', name: 'サーモン', price: 1200);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  name: 'Restaurant 0',
  address: '東京都　新宿',
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/images/restaurant1.jpg',
  name: 'Restaurant 1',
  address: '東京都　渋谷',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/images/restaurant2.jpg',
  name: 'Restaurant 2',
  address: '東京都　赤坂',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpg',
  name: 'Restaurant 3',
  address: '東京都　原宿',
  rating: 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpg',
  name: 'Restaurant 4',
  address: '東京都　池袋',
  rating: 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  //ログインしているユーザー
  name: '太郎',
  orders: [
    Order(
      date: '2022 10/9',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: '2022 10/5',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: '2022 10/9',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: '2022 10/11',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: '2022 10/12',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: '2022 10/22',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: '2022 10/22',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: '2022 10/22',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: '2022 10/22',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: '2022 10/22',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
