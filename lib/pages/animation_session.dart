import 'package:flutter/material.dart';

class AnimationSession extends StatefulWidget {
  const AnimationSession({super.key});

  @override
  State<AnimationSession> createState() => _AnimationSessionState();
}

class _AnimationSessionState extends State<AnimationSession> {
  int _animationStage = 0; // 0: Top, 1: Center, 2: Bottom

  final List<Color> _colors = [
    Colors.red.shade400,
    Colors.yellow.shade600,
    Colors.green.shade400,
  ];

  final List<String> _texts = [
    "RED",
    "YELLOW",
    "GREEN",
  ];

  // Alignments for the AnimatedAlign widget to move the container itself
  final List<AlignmentGeometry> _pageAlignments = [
    Alignment.topCenter,
    Alignment.center,
    Alignment.bottomCenter,
  ];

  static const double _circleDiameter = 150.0; // Changed variable name for clarity

  void _cycleAnimationState() {
    setState(() {
      _animationStage = (_animationStage + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moving Animated Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0), // Padding for the whole body
        child: AnimatedAlign(
          alignment: _pageAlignments[_animationStage],
          duration: const Duration(milliseconds: 1700),
          curve: Curves.easeInOutCubic, // A slightly more dynamic curve
          child: GestureDetector(
            onTap: _cycleAnimationState,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              height: _circleDiameter, // Use diameter for height
              width: _circleDiameter,  // Use diameter for width to make it a circle
              decoration: BoxDecoration(
                color: _colors[_animationStage],
                shape: BoxShape.circle, // Changed to circle
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              alignment: Alignment.center, // Center the text within the circle
              child: Text(
                _texts[_animationStage],
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
