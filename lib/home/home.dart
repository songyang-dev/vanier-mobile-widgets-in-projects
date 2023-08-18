import 'package:flutter/material.dart';

import '../answer/answer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("I have some questions for you."),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/about"),
              child: const Text("About this app"),
            ),
            const Divider(),
            const Text("Which company is behind Flutter?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) =>
                          const AnswerScreen(message: "Wrong answer"),
                    ),
                  ),
                  child: const Text("Microsoft"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const AnswerScreen(message: "Correct!"),
                    ),
                  ),
                  child: const Text("Google"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) =>
                          const AnswerScreen(message: "Wrong answer"),
                    ),
                  ),
                  child: const Text("Facebook"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
