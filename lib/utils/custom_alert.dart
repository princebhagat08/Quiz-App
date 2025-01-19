import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;


  const CustomAlert({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title), // Dynamic title
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(content), // Dynamic content
          const SizedBox(height: 20),
        ],
      ),
      actions: <Widget>[
        // Cancel button
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog when Cancel is pressed
          },
          child: const Text('Cancel'),
        ),

        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
