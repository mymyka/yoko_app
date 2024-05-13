import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:yoko_app/utils/ext/ext.dart';

class PercentIndicator extends StatelessWidget {
  final double percent;

  const PercentIndicator({super.key, required this.percent});

  Color getProgressColor(double percent) {
    if (percent < 0.5) {
      return Colors.red[400]!;
    } else if (percent < 0.8) {
      return Colors.orange[400]!;
    } else {
      return Colors.green[400]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 30.0,
      lineWidth: 5.0,
      percent: percent,
      progressColor: getProgressColor(percent),
      backgroundColor: Colors.grey[300]!,
      circularStrokeCap: CircularStrokeCap.round,
      center: Text(
        '${(percent * 100).toInt()}%',
        style: Theme.of(context).textTheme.bodyLight!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
    );
  }
}
