import 'package:flutter/foundation.dart';
import '../models/food_item.dart';
import '../models/cart_item.dart';
import '../models/order.dart';

class FoodProvider extends ChangeNotifier {
  final List<FoodItem> _allFoodItems = [
    FoodItem(
      id: 'f1',
      name: 'Double Cheeseburger Supreme',
      description: 'Juicy double chicken patties topped with melted cheddar, crisp lettuce, fresh tomatoes, and secret house sauce.',
      price: 12.99,
      rating: 4.8,
      category: 'Burgers',
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&q=80',
      prepTimeMinutes: 20,
      calories: 780,
      
      isPopular: true,
    ),
    FoodItem(
      id: 'f2',
      name: 'Artisan Pepperoni Pizza',
      description: 'Wood-fired sourdough pizza with spicy pepperoni slices, fresh mozzarella, and aromatic basil.',
      price: 16.50,
      rating: 4.9,
      category: 'Pizza',
      imageUrl: 'https://images.unsplash.com/photo-1628840042765-356cda07504e?w=500&q=80',
      prepTimeMinutes: 25,
      calories: 920,
      isPopular: true,
    ),
    FoodItem(
      id: 'f3',
      name: 'Japanese Salmon Teriyaki Bowl',
      description: 'Grilled Atlantic salmon glazed with house teriyaki sauce, steamed Jasmine rice, avocado, and edamame.',
      price: 18.99,
      rating: 4.7,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=500&q=80',
      prepTimeMinutes: 18,
      calories: 620,
      isPopular: true,
    ),
    FoodItem(
      id: 'f4',
      name: 'Classic Margherita Pizza',
      description: 'San Marzano tomato sauce, fresh buffalo mozzarella, virgin olive oil, and sweet basil leaves.',
      price: 14.25,
      rating: 4.6,
      category: 'Pizza',
      imageUrl: 'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?w=500&q=80',
      prepTimeMinutes: 22,
      calories: 680,
    ),
    FoodItem(
      id: 'f5',
      name: 'Avocado & Quinoa Buddha Bowl',
      description: 'Organic quinoa, sliced Hass avocado, roasted chickpeas, kale, cherry tomatoes, and tahini dressing.',
      price: 13.50,
      rating: 4.8,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&q=80',
      prepTimeMinutes: 15,
      calories: 450,
      isPopular: true,
    ),
    FoodItem(
      id: 'f6',
      name: 'Molten Lava Chocolate Cake',
      description: 'Warm rich dark chocolate cake with a gooey molten center, served with vanilla bean ice cream.',
      price: 8.50,
      rating: 4.9,
      category: 'Desserts',
      imageUrl: 'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=500&q=80',
      prepTimeMinutes: 12,
      calories: 550,
      isPopular: true,
    ),
    FoodItem(
      id: 'f7',
      name: 'Iced Caramel Macchiato',
      description: 'Freshly brewed espresso layered with velvety steamed milk and rich vanilla-caramel drizzle.',
      price: 5.75,
      rating: 4.7,
      category: 'Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1517701604599-bb29b565090c?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 240,
    ),
    FoodItem(
      id: 'f8',
      name: 'Crispy Korean Fried Chicken',
      description: 'Double-fried extra crispy chicken wings tossed in sweet and spicy Gochujang glaze.',
      price: 15.99,
      rating: 4.9,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=500&q=80',
      prepTimeMinutes: 20,
      calories: 840,
    ),
    FoodItem(
      id: 'f9',
      name: 'Crispy Chicken Avocado Burger',
      description: 'Golden crispy chicken breast with creamy avocado, lettuce, tomato, and garlic aioli.',
      price: 13.75,
      rating: 4.7,
      category: 'Burgers',
      imageUrl: 'https://images.unsplash.com/photo-1606755962773-d324e0a13086?w=500&q=80',
      prepTimeMinutes: 18,
      calories: 690,
      isPopular: true,
    ),
    FoodItem(
      id: 'f10',
      name: 'Roasted Veggie Pesto Pizza',
      description: 'A crisp hand-stretched crust topped with basil pesto, roasted peppers, zucchini, and mozzarella.',
      price: 15.25,
      rating: 4.6,
      category: 'Pizza',
      imageUrl: 'https://images.unsplash.com/photo-1579751626657-72bc17010498?w=500&q=80',
      prepTimeMinutes: 23,
      calories: 710,
    ),
    FoodItem(
      id: 'f11',
      name: 'Spicy Tofu Ramen',
      description: 'Silky noodles in a spicy miso broth with crispy tofu, shiitake mushrooms, and scallions.',
      price: 14.50,
      rating: 4.8,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=500&q=80',
      prepTimeMinutes: 20,
      calories: 580,
      isPopular: true,
    ),
    FoodItem(
      id: 'f12',
      name: 'Lemon Herb Chicken Salad',
      description: 'Grilled chicken, mixed greens, cucumber, cherry tomatoes, and lemon herb vinaigrette.',
      price: 12.95,
      rating: 4.5,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=500&q=80',
      prepTimeMinutes: 14,
      calories: 430,
    ),
    FoodItem(
      id: 'f13',
      name: 'Shrimp Vegetable Fried Rice',
      description: 'Wok-fried jasmine rice with shrimp, egg, peas, carrots, and a light sesame-soy sauce.',
      price: 16.25,
      rating: 4.7,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=500&q=80',
      prepTimeMinutes: 17,
      calories: 650,
    ),
    FoodItem(
      id: 'f14',
      name: 'Strawberry Cheesecake',
      description: 'Creamy vanilla cheesecake on a buttery biscuit crust, finished with fresh strawberry compote.',
      price: 7.95,
      rating: 4.8,
      category: 'Desserts',
      imageUrl: 'https://images.unsplash.com/photo-1533134242443-d4fd215305ad?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 480,
    ),
    FoodItem(
      id: 'f15',
      name: 'Mango Coconut Smoothie',
      description: 'A refreshing blend of ripe mango, coconut milk, and a touch of honey.',
      price: 6.25,
      rating: 4.6,
      category: 'Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1505252585461-04db1eb84625?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 220,
    ),
    FoodItem(
      id: 'f16',
      name: 'Falafel Hummus Bowl',
      description: 'Crispy chickpea falafel served over hummus with tabbouleh, cucumber, and warm pita.',
      price: 13.25,
      rating: 4.7,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&q=80',
      prepTimeMinutes: 16,
      calories: 520,
      isPopular: true,
    ),
    FoodItem(
      id: 'f17',
      name: 'Grilled Chicken Ranch Burger',
      description: 'Grilled chicken breast with cheddar, crisp lettuce, tomato, and house ranch on a toasted bun.',
      price: 13.50,
      rating: 4.6,
      category: 'Burgers',
      imageUrl: 'https://images.unsplash.com/photo-1553979459-d2229ba7433a?w=500&q=80',
      prepTimeMinutes: 18,
      calories: 640,
    ),
    FoodItem(
      id: 'f18',
      name: 'Black Bean Veggie Burger',
      description: 'A savory black bean patty with avocado, pickled onion, lettuce, and chipotle mayo.',
      price: 12.75,
      rating: 4.5,
      category: 'Burgers',
      imageUrl: 'https://images.unsplash.com/photo-1520072959219-c595dc870360?w=500&q=80',
      prepTimeMinutes: 16,
      calories: 570,
      isPopular: true,
    ),
    FoodItem(
      id: 'f19',
      name: 'Buffalo Chicken Pizza',
      description: 'Spicy buffalo chicken, mozzarella, red onion, and a cool drizzle of ranch.',
      price: 16.75,
      rating: 4.7,
      category: 'Pizza',
      imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&q=80',
      prepTimeMinutes: 24,
      calories: 850,
    ),
    FoodItem(
      id: 'f20',
      name: 'Spinach and Mushroom Pizza',
      description: 'Roasted mushrooms, baby spinach, mozzarella, and garlic on a tomato-sauce crust.',
      price: 15.50,
      rating: 4.6,
      category: 'Pizza',
      imageUrl: 'https://images.unsplash.com/photo-1571407970349-bc81e7e96d47?w=500&q=80',
      prepTimeMinutes: 22,
      calories: 690,
    ),
    FoodItem(
      id: 'f21',
      name: 'Chicken Katsu Curry',
      description: 'Crispy panko chicken with Japanese curry sauce, steamed rice, and pickled vegetables.',
      price: 16.95,
      rating: 4.8,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=500&q=80',
      prepTimeMinutes: 22,
      calories: 780,
      isPopular: true,
    ),
    FoodItem(
      id: 'f22',
      name: 'Vegetable Pad Thai',
      description: 'Rice noodles tossed with tofu, bean sprouts, scallions, crushed peanuts, and tangy tamarind sauce.',
      price: 14.25,
      rating: 4.7,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1559314809-0d155014e29e?w=500&q=80',
      prepTimeMinutes: 18,
      calories: 610,
    ),
    FoodItem(
      id: 'f23',
      name: 'Chicken Teriyaki Noodles',
      description: 'Tender chicken and vegetables tossed with noodles in a sweet-savory teriyaki glaze.',
      price: 15.75,
      rating: 4.6,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1585032226651-759b368d7246?w=500&q=80',
      prepTimeMinutes: 19,
      calories: 670,
    ),
    FoodItem(
      id: 'f24',
      name: 'Tuna Poke Bowl',
      description: 'Fresh tuna, sushi rice, cucumber, edamame, avocado, and sesame-soy dressing.',
      price: 17.50,
      rating: 4.8,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1547592180-85f173990554?w=500&q=80',
      prepTimeMinutes: 15,
      calories: 560,
      isPopular: true,
    ),
    FoodItem(
      id: 'f25',
      name: 'Roasted Sweet Potato Salad',
      description: 'Roasted sweet potato, baby kale, quinoa, pumpkin seeds, and maple citrus dressing.',
      price: 12.50,
      rating: 4.6,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&q=80',
      prepTimeMinutes: 15,
      calories: 440,
    ),
    FoodItem(
      id: 'f26',
      name: 'Grilled Salmon Greens Bowl',
      description: 'Grilled salmon over baby greens with cucumber, brown rice, and lemon-dill dressing.',
      price: 18.25,
      rating: 4.8,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?w=500&q=80',
      prepTimeMinutes: 18,
      calories: 590,
      isPopular: true,
    ),
    FoodItem(
      id: 'f27',
      name: 'Chickpea Spinach Wrap',
      description: 'Spiced chickpeas, spinach, cucumber, and creamy yogurt sauce wrapped in warm whole wheat flatbread.',
      price: 11.95,
      rating: 4.5,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?w=500&q=80',
      prepTimeMinutes: 12,
      calories: 410,
    ),
    FoodItem(
      id: 'f28',
      name: 'Blueberry Pancake Stack',
      description: 'Fluffy buttermilk pancakes with fresh blueberries and warm maple syrup.',
      price: 8.75,
      rating: 4.7,
      category: 'Desserts',
      imageUrl: 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?w=500&q=80',
      prepTimeMinutes: 14,
      calories: 620,
    ),
    FoodItem(
      id: 'f29',
      name: 'Classic Tiramisu',
      description: 'Espresso-soaked sponge layered with mascarpone cream and a dusting of cocoa.',
      price: 8.25,
      rating: 4.9,
      category: 'Desserts',
      imageUrl: 'https://images.unsplash.com/photo-1571877227200-a0d98ea607e9?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 460,
      isPopular: true,
    ),
    FoodItem(
      id: 'f30',
      name: 'Lemon Blueberry Tart',
      description: 'Bright lemon custard in a buttery pastry shell topped with fresh blueberries.',
      price: 7.50,
      rating: 4.6,
      category: 'Desserts',
      imageUrl: 'https://images.unsplash.com/photo-1519915028121-7d3463d20b13?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 390,
    ),
    FoodItem(
      id: 'f31',
      name: 'Vanilla Bean Milkshake',
      description: 'Thick, creamy vanilla bean ice cream blended with chilled milk.',
      price: 6.50,
      rating: 4.7,
      category: 'Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 430,
    ),
    FoodItem(
      id: 'f32',
      name: 'Fresh Watermelon Cooler',
      description: 'Fresh watermelon blended with lime and mint for a crisp, refreshing drink.',
      price: 5.50,
      rating: 4.6,
      category: 'Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1525385133512-2f3edadf3bc6?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 130,
    ),
    FoodItem(
      id: 'f33',
      name: 'Matcha Iced Latte',
      description: 'Ceremonial-style matcha whisked smooth and poured over milk and ice.',
      price: 6.25,
      rating: 4.7,
      category: 'Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1515823064-d6e0c04616a7?w=500&q=80',
      prepTimeMinutes: 5,
      calories: 190,
    ),
    FoodItem(
      id: 'f34',
      name: 'Lemon Garlic Shrimp Pasta',
      description: 'Sauteed shrimp and linguine tossed with garlic, lemon, parsley, and olive oil.',
      price: 17.25,
      rating: 4.8,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=500&q=80',
      prepTimeMinutes: 20,
      calories: 610,
    ),
    FoodItem(
      id: 'f35',
      name: 'Roasted Cauliflower Tacos',
      description: 'Smoky roasted cauliflower with cabbage slaw, avocado crema, and lime in soft tortillas.',
      price: 12.25,
      rating: 4.6,
      category: 'Healthy',
      imageUrl: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=500&q=80',
      prepTimeMinutes: 16,
      calories: 420,
    ),
    FoodItem(
      id: 'f36',
      name: 'Coconut Shrimp with Rice',
      description: 'Crispy coconut-crusted shrimp served with jasmine rice and sweet chili dipping sauce.',
      price: 16.50,
      rating: 4.7,
      category: 'Asian',
      imageUrl: 'https://images.unsplash.com/photo-1625944525533-473f1a3d54e7?w=500&q=80',
      prepTimeMinutes: 18,
      calories: 640,
    ),
  ];

  String _selectedCategory = 'All';
  String _searchQuery = '';
  final List<CartItem> _cart = [];
  final List<FoodOrder> _orders = [];

  List<FoodItem> get allFoodItems => _allFoodItems;
  String get selectedCategory => _selectedCategory;
  String get searchQuery => _searchQuery;
  List<CartItem> get cart => List.unmodifiable(_cart);
  List<FoodOrder> get orders => List.unmodifiable(_orders);

  List<String> get categories => [
    'All',
    'Burgers',
    'Pizza',
    'Asian',
    'Healthy',
    'Desserts',
    'Drinks',
  ];

  List<FoodItem> get filteredFoodItems {
    return _allFoodItems.where((item) {
      final matchesCategory = _selectedCategory == 'All' || item.category == _selectedCategory;
      final matchesSearch = _searchQuery.isEmpty ||
          item.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          item.description.toLowerCase().contains(_searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();
  }

  List<FoodItem> get popularItems => _allFoodItems.where((i) => i.isPopular).toList();

  int get cartCount => _cart.fold(0, (sum, item) => sum + item.quantity);

  double get cartSubtotal => _cart.fold(0.0, (sum, item) => sum + item.totalPrice);
  double get deliveryFee => _cart.isEmpty ? 0.0 : 2.99;
  double get tax => cartSubtotal * 0.08;
  double get cartTotal => cartSubtotal + deliveryFee + tax;

  void selectCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void addToCart(FoodItem item, {int quantity = 1, String? specialInstructions}) {
    final existingIndex = _cart.indexWhere((c) => c.foodItem.id == item.id);
    if (existingIndex >= 0) {
      _cart[existingIndex].quantity += quantity;
      if (specialInstructions != null) {
        _cart[existingIndex].specialInstructions = specialInstructions;
      }
    } else {
      _cart.add(CartItem(
        foodItem: item,
        quantity: quantity,
        specialInstructions: specialInstructions,
      ));
    }
    notifyListeners();
  }

  void removeFromCart(String foodId) {
    _cart.removeWhere((c) => c.foodItem.id == foodId);
    notifyListeners();
  }

  void updateQuantity(String foodId, int delta) {
    final index = _cart.indexWhere((c) => c.foodItem.id == foodId);
    if (index >= 0) {
      _cart[index].quantity += delta;
      if (_cart[index].quantity <= 0) {
        _cart.removeAt(index);
      }
      notifyListeners();
    }
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  FoodOrder? placeOrder({
    required String deliveryAddress,
    required String paymentMethod,
  }) {
    if (_cart.isEmpty) return null;

    final newOrder = FoodOrder(
      orderId: 'ORD-#${1000 + _orders.length + 1}',
      items: List.from(_cart),
      subtotal: cartSubtotal,
      deliveryFee: deliveryFee,
      tax: tax,
      totalPrice: cartTotal,
      deliveryAddress: deliveryAddress,
      orderDate: DateTime.now(),
      status: OrderStatus.placed,
      paymentMethod: paymentMethod,
    );

    _orders.insert(0, newOrder);
    _cart.clear();
    notifyListeners();
    return newOrder;
  }

  bool cancelOrder(String orderId) {
    final index = _orders.indexWhere((o) => o.orderId == orderId);
    if (index >= 0) {
      _orders[index].status = OrderStatus.cancelled;
      notifyListeners();
      return true;
    }
    return false;
  }
}
