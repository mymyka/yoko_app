import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class PercentIndicator extends StatelessWidget {
  final double percent;

  const PercentIndicator({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      value: 0.5,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      backgroundColor: Colors.grey[300],
      strokeWidth: 5,
      semanticsValue: percent.toStringAsFixed(2),
    );
  }
}
