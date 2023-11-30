import 'dart:ffi';

import 'package:digisat_app/themes/dimentions.dart';
import 'package:digisat_app/themes/material.dart';
import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewTestDetails extends ConsumerWidget {
  const ViewTestDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('View Test Details'),
        ),
        body: Padding(
          padding: symmetricPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Row(
                  children: [
                    Text(
                      "View Test Details",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 8)),
                      ),
                      onPressed: () {
                        showDateRangePicker(
                          initialEntryMode: DatePickerEntryMode.input,
                          context: context,
                          firstDate:
                              DateTime.now().subtract(const Duration(days: 30)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 30)),
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_month,
                              size: 20, color: Colors.grey),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Nov-22 to Nov-28",
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: violet[100] ?? Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reading and writing",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Detailed Info  >",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: MyColors.primary,
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),);
  }
}

// class ReadingWritingSection extends StatelessWidget {
//   const ReadingWritingSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         border: Border.all(color: violet[100] ?? Colors.grey),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0, top: 16),
//             child: Text(
//               "Reading Section",
//               style: Theme.of(context).textTheme.titleMedium?.copyWith(),
//             ),
//           ),
//           Divider(
//             color: violet[100],
//             thickness: 1.5,
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Text(
//               "100",
//               style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                     fontWeight: FontWeight.w700,
//                   ),
//             ),
//           ),
//           const SizedBox(
//             height: 2,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Text(
//               "Total Questions",
//               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                     fontWeight: FontWeight.w500,
//                   ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Text(
//               "40",
//               style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                     fontWeight: FontWeight.w700,
//                   ),
//             ),
//           ),
//           const SizedBox(
//             height: 2,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Text("Correct Questions",
//                 style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                       fontWeight: FontWeight.w500,
//                     )),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Text(
//               "70",
//               style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                     fontWeight: FontWeight.w700,
//                     color: Colors.red,
//                   ),
//             ),
//           ),
//           const SizedBox(
//             height: 2,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Text(
//               "Missed",
//               style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                     fontWeight: FontWeight.w500,
//                   ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
// }
