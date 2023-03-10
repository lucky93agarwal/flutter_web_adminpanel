import 'package:flutter/material.dart';
import 'package:flutter_admin/Calendar/admin_calendar_data.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminFullCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Oct 2019',
                  style: GoogleFonts.quicksand(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_left,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_right,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 25.0, top: 15.0, right: 25.0, bottom: 25.0),
            child: Row(children: [
              Admin_Calendar_Data(
                date: 24,
                day: 'S',
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
