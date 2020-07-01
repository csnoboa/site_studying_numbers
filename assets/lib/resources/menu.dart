import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem {
  const MenuItem({this.title, this.route});

  final String title;
  final String route;
}

const List<MenuItem> menuItems = const <MenuItem>[
  const MenuItem(title: 'Table Converter', route: '/table'),
  const MenuItem(title: 'About Us', route: '/table'),
  const MenuItem(title: 'Contact Us', route: '/table'),
  const MenuItem(title: 'Polity', route: '/table'),
];

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({Key key, this.menu}) : super(key: key);

  final MenuItem menu;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(menu.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}