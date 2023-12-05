import 'package:digisat_app/themes/material.dart';
import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';

class WrongCorrectAnswerContainer extends StatelessWidget {
  const WrongCorrectAnswerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
                "Reading & Writing 1 Detail",
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
                          child: CorrectIncorrectWidget(
                        color: Colors.green,
                        title: "Correct Answers",
                        subtitle: "82",
                      )),
                      VerticalDivider(
                        color: violet[50],
                        thickness: 2,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          child: CorrectIncorrectWidget(
                        color: MyColors.mainBlack,
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
                          child: CorrectIncorrectWidget(
                        color: MyColors.mainBlack,
                        title: "Skipped Answers",
                        subtitle: "16",
                      )),
                      VerticalDivider(
                        color: violet[50],
                        thickness: 2,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                          child: CorrectIncorrectWidget(
                        color: Colors.red,
                        title: "Incorrect",
                        subtitle: "12",
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

class CorrectIncorrectWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  const CorrectIncorrectWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
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
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(color: color),
        ),
      ],
    );
  }
}
