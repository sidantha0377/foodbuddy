class Food {
  final String name;
  final String category;
  final String price;
  final String disprice;
  final String description;
  final double amount;
  final String imgeUrl;
  bool isFavourit;

  Food({
    required this.name,
    required this.category,
    required this.price,
    required this.disprice,
    required this.description,
    required this.amount,
    required this.imgeUrl,
    this.isFavourit = false,
  });
}
