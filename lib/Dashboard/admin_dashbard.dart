import 'package:flutter/material.dart';
import 'package:flutter_admin/Dashboard/admin_shared_files_item.dart';
import 'package:flutter_admin/Dashboard/admin_statistics.dart';
import 'package:flutter_admin/Dashboard/admin_sub_header.dart';
import 'package:flutter_admin/Dashboard/admin_tabs.dart';
import 'package:flutter_admin/Dashboard/progress_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin_Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
              child: Text(
                'Ongoing Projects',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            AdminTab(),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProgtreeCardTop(
                      color: Color(0xffFF4C60),
                      projectName: 'Total User',
                      percentComplete: '47%',
                      progressIndicatorColor: Colors.redAccent[100],
                      title: '10k memders',
                      date: 'Today',
                      icon: Icons.person),
                  ProgtreeCardTop(
                    color: Color(0xff6C6CE5),
                    projectName: 'Total Price',
                    percentComplete: '100%',
                    title: '10,000 rupee',
                    date: 'Today',
                    progressIndicatorColor: Colors.blue[200],
                    icon: Icons.money,
                  ),
                  ProgtreeCardTop(
                    color: Color(0xffFAAA1E),
                    projectName: 'Total Sales',
                    percentComplete: '52%',
                    title: '19,000 rupee',
                    date: 'Yesterday',
                    progressIndicatorColor: Colors.amber[200],
                    icon: Icons.shopping_bag_outlined,
                  ),
                ],
              ),
            ),
            Admin_sub_header(
              title: 'Latest Order',
            ),
            Admin_Shared_files_item(
              color: Colors.blue,
              sharedFileName: 'Anish Gupta',
              members: '3 Pc Water',
              et: 'Today',
              fileSize: '01:11 PM',
            ),
            Admin_Shared_files_item(
              color: Colors.amber,
              sharedFileName: 'Satish Mishra',
              members: '7 pc Sugar',
              et: 'Today',
              fileSize: '01:44 PM',
            ),
            Admin_Shared_files_item(
              color: Colors.red,
              sharedFileName: 'Madhuri',
              members: '14 Kg Rice',
              et: 'Today',
              fileSize: '04:17 PM',
            ),
            Admin_sub_header(
              title: 'Product Delivery Statistics',
            ),
            Admin_Stistics(),
          ],
        ),
      ),
    );
  }
}
