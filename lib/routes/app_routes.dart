import 'package:flutter/material.dart';
import 'package:maghanem/pages/cart/cart.dart';
import 'package:maghanem/pages/animation_session.dart';
import 'package:maghanem/pages/cart/checkout.dart';
import 'package:maghanem/pages/customer_entry_screen.dart';
// import 'package:maghanem/pages/customer_profile_screen.dart';

import '../pages/cart/checkout2.dart';
import '../pages/cart_counter.dart';
// import '../pages/login_page.dart'; // Removed old login page import
import '../pages/payment_screen.dart';
import '../pages/portfolio_page.dart'; 

// New Auth Screen Imports
import 'package:maghanem/pages/login_screen.dart';
import 'package:maghanem/pages/registration_screen.dart';
import 'package:maghanem/pages/home_screen.dart';

class AppRoutes {
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String checkout2 = '/checkout2';
  static const String portfolio = '/portfolio';
  static const String cartCounter = '/cartCounter';
  static const String paymentScreen = '/paymentScreen';
  // static const String loginPage = '/loginPage'; // Removed old login page route name
  static const String customerEntryScreen = '/customerEntryScreen';
  static const String customerProfileScreen = '/customerProfileScreen';
  static const String animationSession = '/animationSession';

  // New Auth Route Names
  static const String authLogin = '/auth_login';
  static const String register = '/register';
  static const String home = '/home';

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
      // loginPage: (context) => const LoginPage(), // Removed old login page route
      
      // New Auth Routes
      authLogin: (context) => const LoginScreen(),
      register: (context) => const RegistrationScreen(),
      home: (context) => const HomeScreen(),
      // Add other routes here
    };
  }
}
