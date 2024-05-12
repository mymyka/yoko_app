import 'package:flutter/material.dart';

class PercentIndicator extends StatelessWidget {
  final double percent;

  const PercentIndicator({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      value: 0.5,
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
      backgroundColor: Colors.grey[300],
      strokeWidth: 5,
      semanticsValue: percent.toStringAsFixed(2),
    );
  }
}
