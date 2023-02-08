import 'package:flutter/material.dart';
import 'package:flutter_admin/Calendar/admin_calendar.dart';
import 'package:flutter_admin/Dashboard/admin_dashbard.dart';
import 'package:flutter_admin/NavigationBar/NavigationBar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),

            // Now lets create the dashboard now.....
            Admin_Dash(),

            // Ok dudes now lets complete the right corner of the web app....
            Admin_Calendar(),
          ],
        ),
      ),
    );
  }
}
