import 'package:flutter/material.dart';
import '../screens/dashboard.dart';

void main() {
  runApp(const FinancialAssistant());
}

class FinancialAssistant extends StatelessWidget {
  const FinancialAssistant({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}
