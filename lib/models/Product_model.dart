class Products{
  late  final String? name;
  late final String? description;
  late final String? image;
  late final double? price;
  bool? is_in_stock;
  bool? is_in_cart;
  Products({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    this.is_in_stock = true,
    this.is_in_cart = false,
  });
}
