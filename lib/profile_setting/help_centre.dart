import 'package:flutter/material.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          'FAQs',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          FAQItem(
            question: 'What is SAT?',
            answer:
                'SAT: The SAT, which stands for Scholastic Assessment Test, is like a special test that high school students take when they\'re thinking about going to college. It helps colleges figure out if students are ready for the kind of learning they\'ll do in college classes.',
          ),
          const SizedBox(height: 16.0),
          FAQItem(
            question: 'What is Digisat?',
            answer:
                'Digisat is a SAT preparation app designed to help students prepare for the SAT exam with interactive practice tests and study materials.',
          ),
          const SizedBox(height: 16.0),
          FAQItem(
            question: 'How can I get started with Digisat?',
            answer:
                'To get started with Digisat, download the app from the app store, create an account, and explore the available free SAT tests. You can upgrade to premium for access to more SAT tests and advanced features.',
          ),
          const SizedBox(height: 16.0),
          FAQItem(
            question: 'What are the benefits of upgrading to premium?',
            answer:
                'By upgrading to premium, you unlock a wider range of SAT tests, detailed performance analytics, and personalized study recommendations to enhance your SAT preparation experience.',
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(answer),
          ),
        ],
      ),
    );
  }
}
