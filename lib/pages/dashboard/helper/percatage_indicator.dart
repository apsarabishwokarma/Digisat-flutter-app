import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

class PercentageIndicator extends StatefulWidget {
  final String title;
  final double percentage;
  const PercentageIndicator({
    super.key,
    required this.title,
    required this.percentage,
  });

  @override
  State<PercentageIndicator> createState() => _PercentageIndicatorState();
}

class _PercentageIndicatorState extends State<PercentageIndicator>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 2),
      tween: Tween(begin: 0.0, end: widget.percentage / 100),
      builder: (BuildContext context, double value, Widget? child) {
        String valPer = (value * 100).toStringAsFixed(1);
        return Stack(
          children: [
            SizedBox(
              height: 130,
              width: 130,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                strokeWidth: 12,
                value: value,
                color: MyColors.primary,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: MyColors.mainBlack.withOpacity(0.5)),
                    ),
                    Text(
                      "$valPer %",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 20,
                          color: MyColors.mainBlack,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
