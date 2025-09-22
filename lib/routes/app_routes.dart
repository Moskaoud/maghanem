import 'package:flutter/material.dart';
import 'package:maghanem/pages/cart/cart.dart';
import 'package:maghanem/pages/animation_session.dart';
import 'package:maghanem/pages/cart/checkout.dart';
import 'package:maghanem/pages/customer_entry_screen.dart';
// import 'package:maghanem/pages/customer_profile_screen.dart';

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
  static const String customerEntryScreen = '/customerEntryScreen';
  static const String customerProfileScreen = '/customerProfileScreen';
  static const String animationSession = '/animationSession';
  // Add other route names here

  static Map<String, WidgetBuilder> get routes {
    return {
      customerEntryScreen: (context) => const CustomerEntryScreen(),
      // customerProfileScreen: (context) => const CustomerProfileScreen(customerId: null,),
      cart: (context) => const CartScreen(),
      checkout: (context) => const Checkout(),
      checkout2: (context) => const Checkout2(),
      portfolio: (context) => const PortfolioPage(),
      cartCounter: (context) => const CartCounterExamplePage(),
      paymentScreen: (context) => const PaymentScreen(),
      animationSession: (context) => const AnimationSession(),
      loginPage: (context) => const LoginPage(),
      // Add other routes here
    };
  }
}
