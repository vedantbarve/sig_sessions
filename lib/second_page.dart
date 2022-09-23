import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sig_sessions/third_page.dart';

class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Screen 2",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(
                    builder: (_) {
                      return const ThirdPage();
                    },
                  ),
                );
              },
              child: Text("Naviagte to third page"),
            ),
          ],
        ),
      ),
    );
  }
}
