import 'package:flutter/material.dart';

class CalScreen extends StatefulWidget {
  const CalScreen({super.key});

  @override
  State<CalScreen> createState() => _CalScreenState();
}

class _CalScreenState extends State<CalScreen> {
  TextEditingController no1 = TextEditingController();
  TextEditingController no2 = TextEditingController();
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cal"),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.all(4),
          child: Column(
            children: [
              TextField(
                controller: no1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Enter Num1:"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: no2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Enter Num2:"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          double num1 = double.parse(no1.text);
                          double num2 = double.parse(no2.text);
                          result = (num1 + num2).toString();
                        });
                      },
                      child: Text("+")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          double num1 = double.parse(no1.text);
                          double num2 = double.parse(no2.text);
                          result = (num1 - num2).toString();
                        });
                      },
                      child: Text("-"))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          double num1 = double.parse(no1.text);
                          double num2 = double.parse(no2.text);
                          result = (num1 * num2).toString();
                        });
                      },
                      child: Text("*")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          double num1 = double.parse(no1.text);
                          double num2 = double.parse(no2.text);
                          result = (num1 / num2).toString();
                        });
                      },
                      child: Text("/"))
                ],
              ),
              Text("result: $result")
            ],
          ),
        ));
  }
}
