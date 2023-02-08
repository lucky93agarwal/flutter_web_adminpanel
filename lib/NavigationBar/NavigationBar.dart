import 'package:flutter/material.dart';
import 'package:flutter_admin/NavigationBar/src/CompanyName.dart';
import 'package:flutter_admin/NavigationBar/src/NavBar.dart';
import 'package:flutter_admin/NavigationBar/src/NavBarItem.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100,
        color: Color(0xff6C6CE5),
        child: Stack(
          children: [
            CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Icons.logout,
                name: 'Logout',
                active: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
