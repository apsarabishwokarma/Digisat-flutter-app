import 'package:digisat_app/pages/dashboard/helper/wrong_correct_answer_container.dart';
import 'package:digisat_app/themes/material.dart';
import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CorrectIncorrectTile extends ConsumerWidget {
  const CorrectIncorrectTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: violet[50] ?? MyColors.primary.withOpacity(0.3),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 46,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: violet[20] ?? MyColors.primary.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: violet[600] ?? MyColors.primary,
                        ),
                        color: violet[100],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(
                        "2",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      )),
                    ),
                    const Spacer(),
                    Text("Correct",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.green,
                                )),
                    const SizedBox(
                      width: 60,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Spacer(),
                  CorrectIncorrectWidget(
                    title: "Topic",
                    subtitle: "Calculus",
                    color: Colors.green,
                  ),
                  Spacer(),
                  CorrectIncorrectWidget(
                    title: "Difficulty",
                    subtitle: "Easy",
                    color: Colors.black,
                  ),
                  Spacer(),
                  CorrectIncorrectWidget(
                    title: "Time Spend",
                    subtitle: "50 sec",
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: MaterialButton(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              padding: EdgeInsets.zero,
              onPressed: () {},
              minWidth: 54,
              color: violet[500] ?? MyColors.primary,
              child: Center(
                child: Text("Open",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        )),
              ),
            ))
      ],
    );
  }
}
