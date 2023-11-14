import 'package:flutter/material.dart';

class ReportIssue extends StatelessWidget {
  const ReportIssue({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report Issue"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Issue Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 4, // Allowing multiple lines for issue details
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your "Cancel" logic here.
                      Navigator.pop(context); // Close the screen on cancel
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey, // Set button color to grey for cancel
                    ),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 16), // Add some space between buttons
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your "Report" logic here.
                      // This is where you might send the issue report or perform related actions.
                    },
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
