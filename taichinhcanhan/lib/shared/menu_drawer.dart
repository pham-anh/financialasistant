import 'package:flutter/material.dart';
import 'package:taichinhcanha/screens/httpScreen.dart';
import '../screens/dashboard.dart';
import '../screens/expense.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Dashboard',
      'Expense',
      'Assets Growth',
      'Weather'
    ];

    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(child: Text('Financial Assistant')));

    for (var title in menuTitles) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(title),
        onTap: () {
          switch (title) {
            case 'Expense':
              screen = ExpenseScreen();
              break;
            case 'Weather':
              screen = HttpScreen();
              break;
            default:
              screen = DashboardScreen();
          }

          // prevent menu display when clicking back bottom
          Navigator.of(context).pop();
          // set navigation
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    }

    return menuItems;
  }
}
