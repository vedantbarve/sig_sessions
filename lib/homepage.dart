import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: DeviceInfoPlusWidget(),
      ),
    );
  }
}

class DeviceInfoPlusWidget extends StatefulWidget {
  const DeviceInfoPlusWidget({super.key});

  @override
  State<DeviceInfoPlusWidget> createState() => _DeviceInfoPlusWidgetState();
}

class _DeviceInfoPlusWidgetState extends State<DeviceInfoPlusWidget> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Data :$data"),
        ElevatedButton(
          onPressed: () async {
            DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
            WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
            setState(() {
              data = webBrowserInfo.browserName.name;
            });
          },
          child: Text("Press me"),
        ),
      ],
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "The value of counter is : $index",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              index += 2;
              print(index);
            });
          },
          child: const Text("Text Button"),
        ),
        SizedBox(
          height: 20,
        ),
        //ElevatedButton(
        //   onPressed: () {},
        //   child: const Text("Elevated Button"),
        // )
      ],
    );
  }
}

class TransformWidget extends StatefulWidget {
  const TransformWidget({super.key});

  @override
  State<TransformWidget> createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: GestureDetector(
        onTap: () {
          // setState(() {

          // });
          setState(() {
            angle += 45;
            print(angle);
          });
        },
        child: const FlutterLogo(
          size: 250,
        ),
      ),
    );
  }
}
