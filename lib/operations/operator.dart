import 'package:calculator/button/button.dart';
import 'package:calculator/controller/calculation.dart';
import 'package:calculator/controller/theme.dart';
import 'package:flutter/material.dart';

final List<String> buttons = [
  "AC",
  "%",
  "DEL",
  "/",
  "7",
  "8",
  "9",
  "x",
  "4",
  "5",
  "6",
  "-",
  "1",
  "2",
  "3",
  "+",
  "00",
  "0",
  ".",
  "=",
];
Expanded Calculate(Themes themeController, Calculation controller) {
  return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
            color: themeController.isDark
                ? Color.fromARGB(26, 0, 0, 0)
                : Color.fromARGB(159, 232, 226, 226),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: buttons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (contex, index) {
              switch (index) {
                case 0:
                  return NumButton(
                      buttonOnTapped: () {
                        controller.clear();
                      },
                      color: themeController.isDark
                          ? Color.fromARGB(255, 71, 77, 91)
                          : Color.fromARGB(255, 120, 119, 119),
                      textColor: themeController.isDark
                          ? Color.fromARGB(255, 199, 96, 255)
                          : Color.fromARGB(255, 255, 255, 255),
                      text: buttons[index]);

                case 1:
                  return NumButton(
                      buttonOnTapped: () {},
                      color: themeController.isDark
                          ? Color.fromARGB(255, 71, 77, 91)
                          : Color.fromARGB(255, 120, 119, 119),
                      textColor: themeController.isDark
                          ? Color.fromARGB(255, 199, 96, 255)
                          : Color.fromARGB(255, 255, 255, 255),
                      text: buttons[index]);

                case 2:
                  return NumButton(
                      buttonOnTapped: () {
                        controller.delete();
                      },
                      color: themeController.isDark
                          ? Color.fromARGB(255, 71, 77, 91)
                          : Color.fromARGB(255, 121, 121, 121),
                      textColor: themeController.isDark
                          ? Color.fromARGB(255, 1, 157, 128)
                          : Color.fromARGB(255, 255, 255, 255),
                      text: buttons[index]);

                case 19:
                  return NumButton(
                      buttonOnTapped: () {
                        controller.equal();
                      },
                      color: themeController.isDark
                          ? Color.fromARGB(255, 71, 77, 91)
                          : Color.fromARGB(255, 121, 121, 121),
                      textColor: themeController.isDark
                          ? Color.fromARGB(255, 1, 157, 128)
                          : Color.fromARGB(255, 255, 255, 255),
                      text: buttons[index]);

                default:
                  return NumButton(
                      buttonOnTapped: () {
                        controller.onTapped(buttons, index);
                      },
                      color: themeController.isDark
                          ? Color.fromARGB(255, 71, 77, 91)
                          : Color.fromARGB(255, 121, 121, 121),
                      textColor: isOperator(buttons[index])
                          ? Colors.black
                          : themeController.isDark
                              ? Colors.white
                              : Colors.black,
                      text: buttons[index]);
              }
            }),
      ));
}

Expanded result(Themes themeController, Calculation controller) {
  return Expanded(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 20, top: 70),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                controller.userInput,
                style: TextStyle(
                    color: themeController.isDark ? Colors.white : Colors.black,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(controller.userOutput,
                  style: TextStyle(
                      color: themeController.isDark
                          ? Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 32)),
            ),
          ],
        ),
      ),
    ],
  ));
}

bool isOperator(String y) {
  if (y == "%" || y == "/" || y == "x" || y == "-" || y == "+" || y == "=") {
    return true;
  } else {
    return false;
  }
}
