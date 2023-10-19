import 'package:digisat_app/pages/splash_screen/splash_page_1.dart';
import 'package:digisat_app/pages/splash_screen/splash_page_2.dart';
import 'package:digisat_app/pages/splash_screen/splash_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  //controller to keep track of which page we are on
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              SplashPage1(),
              SplashPage2(),
              SplashPage3(),
            ],
          ),
          //dot indicator
          Container(
            alignment: const Alignment(0, 0.75), // Adjust the alignment as needed
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                // You can use a different effect for the indicator
                dotHeight: 10, // Adjust the height of the indicator dots
                dotWidth: 10, // Adjust the width of the indicator dots
                activeDotColor: Colors.white, // Change the active dot color
                dotColor: Colors.grey, // Change the inactive dot color
              ),
            ),
          )
        ],
      ),
    );
  }
}
