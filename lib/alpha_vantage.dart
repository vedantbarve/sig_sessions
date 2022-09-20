import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sig_sessions/api_service.dart';

ApiService api = ApiService();

class AlphaView extends StatelessWidget {
  const AlphaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alpha View"),
      ),
      body: FutureBuilder(
        future: api.getQuote(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          if (snapshot.hasData) {
            return Center(
              child: Text(snapshot.data.toString()),
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
