import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final String name;

  // the final variable 'touched' must
  final Function touched;

  // The final variable 'active' must be init
  final bool active;

  const NavBarItem({Key key, this.icon, this.name, this.touched, this.active})
      : super(key: key);
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print(widget.icon);
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              Container(
                height: 60.0,
                width: 80.0,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 475),
                      height: 35.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                        color:
                            widget.active ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Icon(
                        widget.icon,
                        color: widget.active ? Colors.white : Colors.white54,
                        size: 19.0,
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 10.0),
                    //   child: Text(
                    //     widget.name,
                    //     style: TextStyle(
                    //         fontSize: 11.0,
                    //         color:
                    //             widget.active ? Colors.white : Colors.white54),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
