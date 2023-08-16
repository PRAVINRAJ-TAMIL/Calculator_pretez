import 'package:calculator/controller/calculation.dart';
import 'package:calculator/controller/theme.dart';
import 'package:calculator/operations/operator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    var calculation = Get.find<Calculation>();
    var themes = Get.find<Themes>();

    return GetBuilder<Themes>(builder: (context) {
      return Scaffold(
        backgroundColor: themes.isDark
            ? const Color.fromARGB(255, 0, 0, 0)
            : Color.fromARGB(90, 181, 181, 181),
        body: Column(
          children: [
            GetBuilder<Calculation>(builder: (context) {
              return result(themes, calculation);
            }),
            Calculate(themes, calculation),
          ],
        ),
      );
    });
  }
}
