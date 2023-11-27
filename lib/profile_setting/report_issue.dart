import 'package:flutter/material.dart';

class ReportIssue extends StatelessWidget {
  const ReportIssue({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          "Report Issue",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Issue Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 10 // Allowing multiple lines for issue details
                ),
            const SizedBox(height: 132),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the screen on cancel
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Report'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
