class FoodItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final String category;
  final String imageUrl;
  final int prepTimeMinutes;
  final int calories;
  final bool isPopular;

  FoodItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.category,
    required this.imageUrl,
    required this.prepTimeMinutes,
    required this.calories,
    this.isPopular = false,
  });
}
