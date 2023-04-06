import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

final dio = Dio();

class NumbersProvider extends ChangeNotifier {
  String? history;
  Map numbers = {};
  String? leyenda;

  NumbersProvider() {
    getNumbers();
  }

  Map<String, String> numbersFromJson(String str) =>
      Map.from(json.decode(str)).map((k, v) => MapEntry<String, String>(k, v));

  String numbersToJson(Map<String, String> data) => json
      .encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)));

  randomNumber() async {
    final response =
        await dio.get('http://numbersapi.com/random?min=10&max=1000');
    //print(response);
    history = response.toString();
    notifyListeners();
  }

  yearTale(int year) async {
    final response =
        await dio.get('http://numbersapi.com/${year.toString()}/year');
    //print(response);
    history = response.toString();
    notifyListeners();
  }

  getNumbers() async {
    final response = await dio.get('http://numbersapi.com/1..10');

    if (response.statusCode == 200) {
      numbers = numbersFromJson(response.data);
      //print(numbers);
      notifyListeners();
    }
  }

  numString(int number) {
    leyenda = numbers['$number'];
    //print(leyenda);
    notifyListeners();
  }
}
