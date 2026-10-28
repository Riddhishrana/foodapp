import 'food_item.dart';

class CartItem {
  final FoodItem foodItem;
  int quantity;
  String? specialInstructions;

  CartItem({
    required this.foodItem,
    this.quantity = 1,
    this.specialInstructions,
  });

  double get totalPrice => foodItem.price * quantity;
}
