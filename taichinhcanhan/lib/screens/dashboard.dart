import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Your Financial Assistant')),
        drawer: const MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: const Text('Dashboard'));
  }
}

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/expense');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: Icon(Icons.money_off), label: 'Expense'),
      ],
    );
  }
}
