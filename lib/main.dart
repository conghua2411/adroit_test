import 'package:flutter/material.dart';

import 'presentation/page/historical_price_page.dart';

void main() {
  runApp(const MaterialApp(
    home: HelloTestPage(),
  ));
}

class HelloTestPage extends StatefulWidget {
  const HelloTestPage({Key? key}) : super(key: key);

  @override
  State<HelloTestPage> createState() => _HelloTestPageState();
}

class _HelloTestPageState extends State<HelloTestPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HistoricalPricePage(),
    );
  }
}
