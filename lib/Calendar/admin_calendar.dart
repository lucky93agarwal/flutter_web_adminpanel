import 'package:flutter/material.dart';
import 'package:flutter_admin/Calendar/admin_full_calendar.dart';
import 'package:flutter_admin/Calendar/admin_jobs.dart';
import 'package:flutter_admin/Calendar/top_admin.dart';

class Admin_Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xffF7F7FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            TopAdmin(),
            AdminFullCalendar(),
            AdminJobs(),
            ClipRRect(
              child: Image.asset(
                'assets/image.png',
                height: 300.0,
                width: 400.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
