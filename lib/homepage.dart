import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          (Theme.of(context).brightness == Brightness.dark)
              ? Text("Dark")
              : Text("Light"),
        ],
      ),
    );
  }
}
