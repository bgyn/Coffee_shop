import 'package:coffee_app/model/coffee_model.dart';

class Shop {
  //coffee for sale list
  final List<Coffee> _coffeeshop = [
    //black coffee
    Coffee(
      name: 'Black Coffee',
      price: 5,
      imagePath: 'assets/black.png',
    ),
    //late coffee
    Coffee(
      name: 'Latte',
      price: 5,
      imagePath: 'assets/cheerfulness.png',
    ),
    //iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: 5,
      imagePath: 'assets/ice-coffee.png',
    ),
    //expresso coffee
    Coffee(
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
