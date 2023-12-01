import 'package:digisat_app/pages/dashboard/helper/percatage_indicator.dart';
import 'package:digisat_app/themes/material.dart';
import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestResultContainer extends ConsumerStatefulWidget {
  const TestResultContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TestResultContainerState();
}

class _TestResultContainerState extends ConsumerState<TestResultContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 16, right: 24, left: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: violet[200] ?? MyColors.primary.withOpacity(0.3),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: violet[20] ?? MyColors.primary.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 10),
              child: Text(
                "Test 1 Result",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 18,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      const Expanded(
                          child: TitleSubtitleWidget(
                        title: "Your Score",
                        subtitle: "1320",
                      )),
                      VerticalDivider(
                        color: violet[200],
                        thickness: 2,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          child: TitleSubtitleWidget(
                        title: "Time Spend",
                        subtitle: "2 hrs 34 minutes",
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      const Expanded(
                          child: TitleSubtitleWidget(
                        title: "Highest Score",
                        subtitle: "1600",
                      )),
                      VerticalDivider(
                        color: violet[200],
                        thickness: 2,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          child: TitleSubtitleWidget(
                        title: "Predicted Score",
                        subtitle: "1400-1600",
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TitleSubtitleWidget(
                          title: "Performance Metric", subtitle: "Good"),
                    ),
                    Spacer(),
                    PercentageIndicator(title: "Good", percentage: 65),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      "Examine Test",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleSubtitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: MyColors.mainBlack.withOpacity(0.5),
              ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
