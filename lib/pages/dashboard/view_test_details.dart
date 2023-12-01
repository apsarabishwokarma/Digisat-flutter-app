import 'package:digisat_app/pages/dashboard/helper/test_result_container.dart';
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
      body: Column(
        children: [
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  Text(
                    "Hi, Username",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 8)),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.history_rounded),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Recent Activity",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const TestResultContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
