import 'package:flutter/material.dart';

class Session12Flutter5 extends StatefulWidget {
  const Session12Flutter5({super.key});

  @override
  State<Session12Flutter5> createState() => _Session12Flutter5State();
}

class _Session12Flutter5State extends State<Session12Flutter5> {
  Offset _offset = Offset.zero;
  Color _containerColor = Colors.blue;
  final Color _defaultColor = Colors.blue;
  final Color _draggingColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // ignore: avoid_print
            print('Tapped!');
          },
          onDoubleTap: () {
            // ignore: avoid_print
            print('Double Tapped!');
          },
          onLongPress: () {
            // ignore: avoid_print
            print('Long Pressed!');
          },
          onPanStart: (details) {
            // ignore: avoid_print
            print('Drag Started at ${details.globalPosition}');
            setState(() {
              _containerColor = _draggingColor;
            });
          },
          onPanUpdate: (details) {
            // ignore: avoid_print
            print('Dragging by ${details.delta}');
            setState(() {
              _offset += details.delta;
            });
          },
          onPanEnd: (details) {
            // ignore: avoid_print
            print('Drag Ended');
            setState(() {
              _containerColor = _defaultColor;
            });
          },
          child: Transform.translate(
            offset: _offset,
            child: Container(
              color: _containerColor,
              width: 100,
              height: 100,
              child: const Center(child: Text('Tap Me')),
            ),

          ),
        ),
      ),
    );
  }
}
