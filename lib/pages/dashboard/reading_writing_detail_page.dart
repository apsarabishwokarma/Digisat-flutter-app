import 'package:digisat_app/pages/dashboard/helper/correct_incorrect_tile.dart';
import 'package:digisat_app/pages/dashboard/helper/wrong_correct_answer_container.dart';
import 'package:digisat_app/themes/dimentions.dart';
import 'package:digisat_app/themes/material.dart';
import 'package:digisat_app/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadingWritingDetailPage extends ConsumerWidget {
  const ReadingWritingDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: violet[20],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: symmetricPadding,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Hi, Username",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const Spacer(),
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
              const SizedBox(
                height: 16,
              ),
              const WrongCorrectAnswerContainer(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Filter Options Here/Change View Mode options here",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7, mainAxisSpacing: 4),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                      ),
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.green,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.inter().fontFamily,
                            ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const CorrectIncorrectTile(),
              const SizedBox(
                height: 10,
              ),
              const CorrectIncorrectTile(),
              const SizedBox(
                height: 10,
              ),
              const CorrectIncorrectTile(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MaterialButton(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: violet[100] ?? MyColors.primary.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Prev",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                      children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        height: 16,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  )),
                  const Spacer(),
                  MaterialButton(
                    color: violet[500],
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Next",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                  ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              ExpansionTile(title: Text("Test"))
            ],
          ),
        ),
      ),
    );
  }
}
