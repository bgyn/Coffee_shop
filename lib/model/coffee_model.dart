class Coffee {
  final int id;
  final String name;
  final int price;
  final String imagePath;
  final int quantity;

  Coffee({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  });
}
