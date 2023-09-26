import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  //controller to keep track of which page we are on
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("DIGISAT"),
      // ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.green,
              )
            ],
          ),
          //dot indicator
          Container(alignment: const Alignment(0, 0.75), child: SmoothPageIndicator(controller: _controller, count: 3))
        ],
      ),
    );
  }
}
