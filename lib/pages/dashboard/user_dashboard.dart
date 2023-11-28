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
                          const EdgeInsets.symmetric(horizontal: 4)),
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
                                  ),
                        )
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
                // selectedDayPredicate: (day) => isSameDay(day, DateTime.now()),
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
                    color: Theme.of(context).primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  todayTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  outsideTextStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                focusedDay: DateTime.now(),
                firstDay: DateTime.now().subtract(Duration(days: 350)),
                lastDay: DateTime.now().add(Duration(days: 356)),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyColors.primary.withOpacity(0.5)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "View Details",
                        style: Theme.of(context).textTheme.bodyLarge,
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
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const Expanded(
                          child: ViewDetailNames(),
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: MyColors.primary.withOpacity(0.3),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Expanded(
                          child: ViewDetailNames(),
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
                        const Expanded(
                          child: ViewDetailNames(),
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: MyColors.primary.withOpacity(0.3),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Expanded(
                          child: ViewDetailNames(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      ViewDetailNames(),
                      const Spacer(),
                      Stack(
                        children: [
                          const SizedBox(
                            height: 130,
                            width: 130,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.grey,
                              strokeWidth: 12,
                              value: 0.5,
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
                                    "Good",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                            color: MyColors.mainBlack
                                                .withOpacity(0.5)),
                                  ),
                                  Text(
                                    "62.5%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: MyColors.mainBlack,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const SizedBox(
                          height: 48,
                          width: double.maxFinite,
                          child: Center(child: Text("View more details"))))
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
  const ViewDetailNames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 6,
              backgroundColor: MyColors.primary,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Total test taken",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: MyColors.mainBlack.withOpacity(0.6),
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
            "19/100",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        )
      ],
    );
  }
}
