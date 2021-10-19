import 'package:flutter/material.dart';
import 'package:taichinhcanha/screens/expense.dart';
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
      routes: {
        '/': (context) => DashboardScreen(),
        '/expense': (context) => ExpenseScreen(),
      },
      initialRoute: '/', // note: cannot set both `initialRoute` and `home`
    );
  }
}
