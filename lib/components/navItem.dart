import 'package:flutter/material.dart';
import './styles/navItem.dart';

class NavItem extends StatefulWidget {
  final bool isRecognized;
  final String name;
  NavItem({
    @required this.isRecognized,
    @required this.name
  });

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        margin: EdgeInsets.only(right: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(widget.name, style: widget.isRecognized?pressedTextStyle:unpressedTextStyle,),
            widget.isRecognized ? 
            Container(
              width: 15,
              height: 2,
              margin: EdgeInsets.only(top: 2),
              color: const Color(0xff26412F)
            )
            : Container(),
        ],),
    ));
  }
}
