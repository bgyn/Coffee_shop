import 'package:coffee_app/model/coffee_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartState extends StateNotifier<List<Coffee>> {
  CartState([List<Coffee>? cart]) : super(cart ?? []);

  int getLength() {
    return state.length;
  }

  void add(Coffee coffee) {
    state = [...state, coffee];
  }

  void remove(Coffee coffee) {
    state = state.where((item) => coffee.id != item.id).toList();
  }

  void udpate(Coffee coffee, int quantity) {
    state = state
        .map((thisCoffee) => coffee.id == thisCoffee.id
            ? thisCoffee.update(quantity: quantity)
            : thisCoffee)
        .toList();
  }
}

final cartProvider =
    StateNotifierProvider<CartState, List<Coffee>>((ref) => CartState());
