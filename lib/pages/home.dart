import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/config/constants.dart';
import 'package:travel/helpers/generate_random_color.dart';
import 'package:travel/pages/demo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          // icon: const Icon(
          //   Icons.menu,
          //   color: Colors.black,
          // ),
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 33,
            width: 33,
          ),
          onPressed: () => {},
        ),
        title: const Text(
          'Discover',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),

            /// Wrapping with GestureDetector so we can click the CircleAvatar
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DemoPage(),
                ),
              ),
              child: const CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/seed/person/200/300',
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Category Slider
            SizedBox(
              height: 20 + 25 + 20,
              child: ListView.separated(
                padding: const EdgeInsets.all(
                  20,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Text(
                    'Category$index',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: index == 0 ? primaryColor : fontColor,
                          fontWeight:
                              index == 0 ? FontWeight.w900 : FontWeight.w400,
                        ),
                  );
                }),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 29,
                ),
                itemCount: 10,
              ),
            ),

            SizedBox(
              height: 253 + 16 + 6,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 253,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: generateRandomColor(),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/seed/${index + 1}/800',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                        child: Text(
                      'Slider$index',
                      style: Theme.of(context).textTheme.headline1,
                    )),
                  );
                },
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 88,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(44),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              offset: const Offset(0, -2),
              blurRadius: 20,
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          children: [
            
          ],
        ),
      ),
    );
  }
}
