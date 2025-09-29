import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:maghanem/services/auth_service.dart'; // Assuming this path
// Import your login screen if you want a direct logout to login navigation
// import 'package:maghanem/pages/login_screen.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService(FirebaseAuth.instance);
    final User? currentUser = authService.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () async {
              await authService.signOut();
              // After signing out, you'll likely want to navigate to a login screen.
              // This navigation is often handled by an AuthWrapper listening to authStateChanges.
              // For a direct navigation example (if not using an AuthWrapper immediately):
              // Navigator.of(context).pushAndRemoveUntil(
              //   MaterialPageRoute(builder: (context) => const LoginScreen()), // Replace with your actual LoginScreen
              //   (Route<dynamic> route) => false, // Remove all routes below
              // );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            if (currentUser != null)
              Text(
                'Logged in as: ${currentUser.email}',
                style: Theme.of(context).textTheme.titleMedium,
              )
            else
              const Text('Not logged in.'),
          ],
        ),
      ),
    );
  }
}
