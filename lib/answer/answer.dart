import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  final String message;
  const AnswerScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your answer to the question is...")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(message),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Go back!"),
          )
        ],
      ),
    );
  }
}
