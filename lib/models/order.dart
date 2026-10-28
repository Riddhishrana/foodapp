import 'cart_item.dart';

enum OrderStatus {
  placed,
  preparing,
  outForDelivery,
  delivered,
  cancelled,
}

class FoodOrder {
  final String orderId;
  final List<CartItem> items;
  final double subtotal;
  final double deliveryFee;
  final double tax;
  final double totalPrice;
  final String deliveryAddress;
  final DateTime orderDate;
  OrderStatus status;
  final String paymentMethod;

  FoodOrder({
    required this.orderId,
    required this.items,
    required this.subtotal,
    required this.deliveryFee,
    required this.tax,
    required this.totalPrice,
    required this.deliveryAddress,
    required this.orderDate,
    required this.status,
    required this.paymentMethod,
  });

  String get statusText {
    switch (status) {
      case OrderStatus.placed:
        return 'Order Placed';
      case OrderStatus.preparing:
        return 'Preparing Food';
      case OrderStatus.outForDelivery:
        return 'Out for Delivery';
      case OrderStatus.delivered:
        return 'Delivered';
      case OrderStatus.cancelled:
        return 'Cancelled';
    }
  }
}
