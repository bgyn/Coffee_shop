import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/model/coffee_model.dart';
import 'package:coffee_app/model/shop_model.dart';
import 'package:coffee_app/states/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopPages extends ConsumerStatefulWidget {
  const ShopPages({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShopPagesState();
}

class _ShopPagesState extends ConsumerState<ShopPages> {
  Shop shop = Shop();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              "How would like your coffee?",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: shop.coffeeList.length,
                itemBuilder: (context, index) {
                  Coffee eachCofee = shop.coffeeList[index];
                  return CoffeeTile(
                    cofee: eachCofee,
                    icon: const Icon(Icons.add),
                    onPressed: () => addToCart(shop.coffeeList[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void addToCart(Coffee coffee) {
    ref.read(cartProvider.notifier).add(coffee);
  }
}
