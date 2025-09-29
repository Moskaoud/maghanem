import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Screen Placeholder'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint('Login button pressed');
                // Navigate to Registration Screen if needed
                // Example: Navigator.pushNamed(context, '/register');
                if (Navigator.canPop(context)){
                  debugPrint('can pop');

                  Navigator.pop(context); // Go back if possible
                }
                debugPrint('can not pop');
              },
              child: const Text('No account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}
