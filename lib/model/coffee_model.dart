import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class Coffee {
  final String id;
  final String name;
  final int price;
  final String imagePath;
  final int quantity;

  Coffee({
    String? id,
    required this.name,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  }) : id = id ?? const Uuid().v4();

  Coffee update({int? quantity}) => Coffee(
        name: name,
        price: price,
        imagePath: imagePath,
        quantity: quantity!,
      );
}
