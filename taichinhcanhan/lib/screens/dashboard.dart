import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Financial Assistant')),
      drawer: const MenuDrawer(),
    );
  }
}
