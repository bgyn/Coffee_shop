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
}

final cartProvider =
    StateNotifierProvider<CartState, List<Coffee>>((ref) => CartState());
