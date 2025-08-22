import 'package:flutter/material.dart';
import 'package:maghanem/pages/cart/cart.dart';
import 'package:maghanem/pages/cart/checkout.dart';

import '../pages/cart/checkout2.dart';
import '../pages/cart_counter.dart';
import '../pages/login_page.dart';
import '../pages/payment_screen.dart';
import '../pages/portfolio_page.dart'; // Assuming Checkout widget is in checkout.dart

class AppRoutes {
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String checkout2 = '/checkout2';
  static const String portfolio = '/portfolio';
  static const String cartCounter = '/cartCounter';
  static const String paymentScreen = '/paymentScreen';
  static const String loginPage = '/loginPage';
  // Add other route names here

  static Map<String, WidgetBuilder> get routes {
    return {
      cart: (context) => const CartScreen(),
      checkout: (context) => const Checkout(),
      checkout2: (context) => const Checkout2(),
      portfolio: (context) => const PortfolioPage(),
      cartCounter: (context) => const CartCounterExamplePage(),
      paymentScreen: (context) => const PaymentScreen(),
      loginPage: (context) => const LoginPage(),
      // Add other routes here
    };
  }
}
