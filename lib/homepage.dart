import 'package:flutter/material.dart';
import 'package:sig_sessions/api_service.dart';

ApiService api = ApiService();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    print(theme.brightness);
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: api.sampleFuture(2),
        builder: (context, rr) {
          if (rr.hasData) {
            return const Center(
              child: Text("Hey I've waited sooo long"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
