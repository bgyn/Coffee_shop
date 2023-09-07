import 'package:coffee_app/model/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final Coffee cofee;
  const CoffeeTile({
    super.key,
    required this.cofee,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
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
          vertical: height * 0.025,
          horizontal: width * 0.015,
        ),
        child: ListTile(
            title: Text(cofee.name),
            subtitle: Text(cofee.price.toString()),
            leading: Image.asset(cofee.imagePath),
            trailing: IconButton(
              onPressed: onPressed,
              icon: icon,
            )),
      ),
    );
  }
}
