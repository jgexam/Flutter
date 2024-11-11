import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // TextEditingControllers to get user input
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  // Variable to store the result
  double? result;

  // Function to perform addition
  void _add() {
    setState(() {
      double num1 = double.parse(num1Controller.text);
      double num2 = double.parse(num2Controller.text);
      result = num1 + num2;
    });
  }

  // Function to perform subtraction
  void _subtract() {
    setState(() {
      double num1 = double.parse(num1Controller.text);
      double num2 = double.parse(num2Controller.text);
      result = num1 - num2;
    });
  }

  // Function to perform multiplication
  void _multiply() {
    setState(() {
      double num1 = double.parse(num1Controller.text);
      double num2 = double.parse(num2Controller.text);
      result = num1 * num2;
    });
  }

  // Function to perform division
  void _divide() {
    setState(() {
      double num1 = double.parse(num1Controller.text);
      double num2 = double.parse(num2Controller.text);
      result = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculator"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                // label: Text("Hiiiii"),
                labelText: "Enter first number",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                labelText: "Enter second number",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _add,
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: _subtract,
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: _multiply,
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: _divide,
                  child: Text("/"),
                ),
              ],
            ),
            SizedBox(height: 32),
            result != null
                ? Text(
                    "Result: $result",
                    style: TextStyle(fontSize: 24),
                  )
                : Text("please enter the value first...!"),
          ],
        ),
      ),
    );
  }
}