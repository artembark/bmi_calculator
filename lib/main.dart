import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:vk_bridge/vk_bridge.dart';

Future<void> main() async {
  final result = await VKBridge.instance.init();

  print('VKBridge.init: $result');
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
