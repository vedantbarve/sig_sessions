import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sig_sessions/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Screen 1",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (_) {
                      return const SecondPage(
                        name: "Gappi",
                      );
                    },
                  ),
                );
              },
              child: const Text("Navigate to next page"),
            ),
          ],
        ),
      ),
    );
  }
}
