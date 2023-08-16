import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculation extends GetxController {
  var userInput = "";
  var userOutput = "";

  equal() {
    String Input = userInput;
    Input = Input.replaceAll("x", "*");
    Parser p = Parser();
    Expression expression = p.parse(Input);
    ContextModel context = ContextModel();
    double e = expression.evaluate(EvaluationType.REAL, context);

    userOutput = e.toString();
    update();
  }

  clear() {
    userInput = "";
    userOutput = "";
    update();
  }

  delete() {
    userInput = userInput.substring(0, userInput.length - 1);
    update();
  }

  onTapped(List<String> buttons, int index) {
    userInput += buttons[index];
    update();
  }
}
