import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Financial Assistant')),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MenuBottom(),
      body: const Text('Expense screen'),
    );
  }
}
