import 'package:digisat_app/pages/dashboard/helper/percatage_indicator.dart';
import 'package:digisat_app/pages/dashboard/view_test_details.dart';
import 'package:digisat_app/themes/dimentions.dart';
import 'package:digisat_app/themes/material.dart';
import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class UserDashboard extends ConsumerWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: symmetricPadding,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Row(
                children: [
                  Text(
                    "Hello, Username",
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
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 10, bottom: 10, right: 10),
                  child: SvgPicture.asset(
                    "assets/icons/Icon.svg",
                    colorFilter: const ColorFilter.mode(
                      MyColors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: violet[20],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: MyColors.primary.withOpacity(0.2)),
              child: TableCalendar(
                onDaySelected: (selectedDay, focusedDay) {},
                weekendDays: const [DateTime.saturday, DateTime.sunday],
                headerStyle: const HeaderStyle(
                  leftChevronPadding: EdgeInsets.all(0),
                  titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onHeaderTapped: (focusedDay) {
                  print("header tapped $focusedDay");
                },
                calendarFormat: CalendarFormat.week,
                daysOfWeekHeight: 40,
                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.rectangle,
                  ),
                  selectedTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  todayDecoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  todayTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  outsideTextStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                focusedDay: DateTime.now(),
                firstDay: DateTime.now().subtract(const Duration(days: 350)),
                lastDay: DateTime.now().add(const Duration(days: 356)),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyColors.primary.withOpacity(0.5)),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: violet[20] ?? MyColors.primary.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Test Details",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.orange.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: Text(
                                "Test in 7 days ",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.orange,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        const Expanded(
                          child: ViewDetailNames(
                            marks: "40/100",
                            title: "Time Spend",
                          ),
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: MyColors.primary.withOpacity(0.3),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Expanded(
                          child: ViewDetailNames(
                            marks: "40/100",
                            title: "Total Test Taken",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        const Expanded(
                          child: ViewDetailNames(
                            marks: "40/100",
                            title: "Total Test Taken",
                          ),
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: MyColors.primary.withOpacity(0.3),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Expanded(
                          child: ViewDetailNames(
                            marks: "1400",
                            title: "Predicted Score",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      ViewDetailNames(
                        marks: "1300",
                        title: "Average Score",
                      ),
                      Spacer(),
                      PercentageIndicator(
                        percentage: 62.5,
                        title: "Good",
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16.0, left: 16, right: 16),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ViewTestDetails(),
                          ));
                        },
                        child: const SizedBox(
                          height: 48,
                          width: double.maxFinite,
                          child: Center(
                            child: Text(
                              "View more details",
                            ),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ViewDetailNames extends StatelessWidget {
  final String title;
  final String marks;
  const ViewDetailNames({
    super.key,
    required this.title,
    required this.marks,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 4.2,
              backgroundColor: MyColors.primary,
            ),
            const SizedBox(
              width: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: MyColors.mainBlack.withOpacity(0.6),
                    ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(
            marks,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        )
      ],
    );
  }
}
