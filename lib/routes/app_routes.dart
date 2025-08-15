import 'package:flutter/material.dart';
import 'package:maghanem/pages/cart/cart.dart';
import 'package:maghanem/pages/cart/checkout.dart';

import '../pages/cart/checkout2.dart'; // Assuming Checkout widget is in checkout.dart

class AppRoutes {
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String checkout2 = '/checkout2';
  // Add other route names here

  static Map<String, WidgetBuilder> get routes {
    return {
      cart: (context) => const CartScreen(),
      checkout: (context) => const Checkout(),
      checkout2: (context) => const Checkout2(),
      // Add other routes here
    };
  }
}
