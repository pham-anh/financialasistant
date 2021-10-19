import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Financial Assistant')),
      drawer: const MenuDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.money_off), label: 'Expense'),
        ],
      ),
      body: const Text('Expense screen'),
    );
  }
}
