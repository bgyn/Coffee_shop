import 'package:coffee_app/model/coffee_model.dart';

class Shop {
  //coffee for sale list
  final List<Coffee> _coffeeshop = [
    //black coffee
    Coffee(
      id: 1,
      name: 'Black Coffee',
      price: 5,
      imagePath: 'assets/black.png',
    ),
    //late coffee
    Coffee(
      id: 2,
      name: 'Latte',
      price: 5,
      imagePath: 'assets/cheerfulness.png',
    ),
    //iced coffee
    Coffee(
      id: 3,
      name: 'Iced Coffee',
      price: 5,
      imagePath: 'assets/ice-coffee.png',
    ),
    //expresso coffee
    Coffee(
      id: 4,
      name: 'Expresso',
      price: 5,
      imagePath: 'assets/expresso.png',
    ),
  ];

  //user cart

  //get coffee list
  List<Coffee> get coffeeList => _coffeeshop;

  //get user cart
}
