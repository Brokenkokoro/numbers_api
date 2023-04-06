import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numbers_api/Providers/numbers_provider.dart';
import 'package:numbers_api/Views/select_number.dart';
import 'package:numbers_api/Views/year_numbers.dart';

import 'Views/views.dart';

final numbersProvider = ChangeNotifierProvider((ref) => NumbersProvider());
void main() {
  runApp(const ProviderScope(child: NumbersApp()));
}

class NumbersApp extends StatelessWidget {
  const NumbersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Numbers App',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeView(),
        'random': (_) => const RandomNumbers(),
        'year': (_) => const YearNumber(),
        'number': (_) => const SelectNumber(),
      },
      theme: ThemeData.light(),
    );
  }
}
