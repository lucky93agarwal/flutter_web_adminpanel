import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Calendar_Data extends StatelessWidget {
  final int date;
  final String day;

  Admin_Calendar_Data({
    this.date,
    this.day,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 25.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          color: (date == 24) ? Colors.amber : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 7.5,
              spreadRadius: 1.0,
              color: Colors.black12,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date.toString(),
            style: GoogleFonts.quicksand(
              fontSize: 11.0,
              fontWeight: FontWeight.w600,
              color: (date == 24) ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Text(
            day,
            style: GoogleFonts.quicksand(
              fontSize: 11.0,
              fontWeight: FontWeight.w600,
              color: (date == 24) ? Colors.white : Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
