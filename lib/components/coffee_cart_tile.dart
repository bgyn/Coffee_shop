import 'package:coffee_app/model/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoffeeCartTile extends ConsumerWidget {
  final void Function()? onDereament;
  final void Function()? onIncreament;
  final void Function()? onPressed;
  final Widget icon;
  final Coffee cofee;
  const CoffeeCartTile({
    super.key,
    required this.cofee,
    required this.onPressed,
    required this.icon,
    required this.onDereament,
    required this.onIncreament,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: height * 0.03,
          horizontal: width * 0.01,
        ),
        child: ListTile(
            title: Text(cofee.name),
            subtitle: Text("\$ ${cofee.price}"),
            leading: Image.asset(cofee.imagePath),
            trailing: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: width * 0.25,
                    height: height * .06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: onDereament,
                            icon: const FaIcon(
                              FontAwesomeIcons.minus,
                              size: 16,
                            ),
                          ),
                        ),
                        Text(
                          cofee.quantity.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: onIncreament,
                            icon: const FaIcon(
                              FontAwesomeIcons.plus,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: onPressed,
                  child: SizedBox(
                    height: height * 0.02,
                    child: const Icon(Icons.delete),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
