import 'package:flutter/material.dart';
import 'package:calculator/color.dart';


void main() {
  runApp(const HomeCalculator());
}

class HomeCalculator extends StatelessWidget {
  const HomeCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorApp(),
      title: "Calculator",
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Row(
            children: [
              ButtonCalculator(), ButtonCalculator()
            ],
          ),
        ],
      ),
    );
  }


  Widget ButtonCalculator(){
    return Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                      primary: buttonColor,
                    ),
                    onPressed: () {}, 
                    child: const Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                    ),
                ),
              );
  }
}