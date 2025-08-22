import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/payment.dart'; // Assuming payment.dart is in lib/models/

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the Payment model instance - ensure it's provided in an ancestor widget
    // final paymentModel = Provider.of<Payment>(context); // For listening and rebuilding
    // final paymentModelReader = context.read<Payment>(); // For calling methods without listening

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Options'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selected Payment Type:',
              style: TextStyle(fontSize: 20),
            ),
            // Consumer widget to listen to Payment model changes
            Consumer<Payment>(
              builder: (context, payment, child) {
                // This builder function is called whenever notifyListeners() is called in Payment
                return Text(
                  payment.paymentType.isEmpty || payment.paymentType == "none"
                      ? 'Not Selected'
                      : payment.paymentType,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: payment.paymentType.isEmpty || payment.paymentType == "none"
                            ? Colors.grey
                            : Theme.of(context).colorScheme.primary,
                      ),
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Use context.read<Payment>() to call methods without rebuilding this specific widget,
                // if this button itself doesn't need to rebuild based on Payment model changes.
                // The Consumer widget above will handle rebuilding the Text widget.
                context.read<Payment>().setPaymentType('Credit Card');
              },
              child: const Text('Select Credit Card'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<Payment>().setPaymentType('PayPal');
              },
              child: const Text('Select PayPal'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<Payment>().setPaymentType('Google Pay');
              },
              child: const Text('Select Google Pay'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
              ),
              onPressed: () {
                context.read<Payment>().setPaymentType('none'); // Or an empty string
              },
              child: const Text('Clear Selection', style: TextStyle(color: Colors.black87)),
            ),
          ],
        ),
      ),
    );
  }
}
