import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sig_sessions/homepage.dart';
import 'package:sig_sessions/second_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Screen 3",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () async {
                await Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(name: "Gopu"),
                  ),
                  (route) => false,
                );
              },
              child: const Text("Navigate to homepage"),
            ),
          ],
        ),
      ),
    );
  }
}
