import 'package:coffee_app/components/coffee_cart_tile.dart';
import 'package:coffee_app/esewa/esewa.dart';
import 'package:coffee_app/model/coffee_model.dart';
import 'package:coffee_app/model/shop_model.dart';
import 'package:coffee_app/states/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartPage extends ConsumerWidget {
  int sum = 0;
  final Esewa _esewa = Esewa();
  final shop = Shop();
  CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartProvider);

    void deleteFromCart(Coffee coffee) {
      ref.watch(cartProvider.notifier).remove(coffee);
    }

    void update(Coffee coffee, int quantity) {
      ref.read(cartProvider.notifier).udpate(coffee, quantity);
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (context, index) {
                  Coffee eachCofee = cartList[index];
                  var quantity = 1;
                  return CoffeeCartTile(
                    onDereament: () => update(eachCofee, quantity--),
                    onIncreament: () => update(eachCofee, 5),
                    cofee: eachCofee,
                    icon: const Icon(Icons.delete),
                    onPressed: () => deleteFromCart(eachCofee),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: cartList.isEmpty
                  ? null
                  : () {
                      for (final price in cartList) {
                        sum += price.price * price.quantity;
                      }
                      _esewa.pay(sum);
                    },
              child: const Text("CheckOut"),
            ),
          ],
        ),
      ),
    );
  }
}
