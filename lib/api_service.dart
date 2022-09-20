import 'dart:convert';

import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = "https://www.alphavantage.co/query?";
  final String apiKey = "26S9OZKNJ4XDLQUM";

  Future getQuote() async {
    var response = await Dio().get(
        "https://www.alphavantage.co/query?function=OVERVIEW&symbol=AAPL&apikey=$apiKey");
    if (response.statusCode == 200) {
      JsonEncoder encoder = const JsonEncoder.withIndent("  ");
      return encoder.convert(response.data);
    }
  }

  Future sampleFuture(int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    return true;
  }
}
