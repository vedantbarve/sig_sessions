import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(
    const RootWidget(),
  );
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
