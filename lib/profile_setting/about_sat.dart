import 'package:flutter/material.dart';

class AboutSat extends StatelessWidget {
  const AboutSat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SAT'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SAT: The SAT, which stands for Scholastic Assessment Test, is like a special test that high school students take when they\'re thinking about going to college. It helps colleges figure out if students are ready for the kind of learning they\'ll do in college classes.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'The SAT is an entrance exam used by most colleges and universities to make admissions decisions. The SAT is a multiple-choice, pencil-and-paper test created and administered by the College Board.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'This test has three main parts: one where you read stuff and answer questions about it, another about math problems, and there\'s an extra part where you write an essay, but you don\'t have to do that if you don\'t want to. When you finish all these parts, they add up your scores, and the highest you can get is 1600.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'SAT Scores: The total SAT score ranges between 400 and 1600. The Evidence-Based Reading and Writing Section score ranges between 200–800 and the Mathematics section is scored on a 200 to 800-point scale.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Validity: SAT scores are valid for five years from the date of the test. Test takers can request a Question-and-Answer Service up to five months after their respective test dates.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'For more knowledge, check this out: What is SAT – Know all about SAT (careers360.com)',
              style: TextStyle(fontSize: 16.0, color: Colors.blue),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Information\nIf you have questions or concerns about these, please contact us at [digisatsupportteam@gmail.com].',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Thank you for using Digisat!',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
