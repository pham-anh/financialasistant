import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  // add input text field
  final TextEditingController fieldtHeight = TextEditingController();
  final TextEditingController fieldWeight = TextEditingController();
  String heightMessage = '';
  String weightMessage = '';

  final double fontSize = 18;
  String result = '';
  bool isMetric = true;
  bool isImperial = false;
  double? height;
  double? weight;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [isMetric, isImperial];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    heightMessage =
        'Enter your height in ' + ((isMetric ? 'meters' : 'inches'));
    weightMessage = 'Enter your weight in ' + ((isMetric ? 'kilos' : 'pounds'));
    return Scaffold(
      appBar: AppBar(title: const Text('Your Financial Assistant')),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MenuBottom(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextField(
              controller: fieldtHeight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: heightMessage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextField(
              controller: fieldWeight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: weightMessage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: ElevatedButton(
              child: Text(
                'Calculate BMI',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
              onPressed: findBMI,
            ),
          ),
          Text(
            result,
            style: TextStyle(fontSize: fontSize),
          )
        ]),
      ),
    );
  }

  void toggleMeasure(value) {
    if (value == 0) {
      isMetric = true;
      isImperial = false;
    } else {
      isMetric = false;
      isImperial = true;
    }
    setState(() {
      isSelected = [isMetric, isImperial];
    });
  }

  void findBMI() {
    double bmi = 0;
    double height = double.tryParse(fieldtHeight.text) ?? 0;
    double weight = double.tryParse(fieldWeight.text) ?? 0;

    if (isMetric) {
      bmi = weight / (height * height);
    } else {
      bmi = weight * 703 / (height * height);
    }

    setState(() {
      result = 'Your BIM is ' + bmi.toStringAsFixed(2);
    });
  }
}
