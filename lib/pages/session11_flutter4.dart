import 'package:flutter/material.dart';

class Session11Flutter4 extends StatelessWidget {
  const Session11Flutter4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Background widget
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            // Positioned widget
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Top Left',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            // Another widget on top
            Container(
              width: 150,
              height: 150,
              color: Colors.green.withOpacity(0.7),
              child: const Center(
                child: Text(
                  'Middle',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
             // A widget that is partially out of bounds
            Positioned(
              bottom: -20,
              right: -20,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: const Center(child: Text('Out of bounds')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
