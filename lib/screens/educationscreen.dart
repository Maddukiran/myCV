import 'package:flutter/material.dart';
import 'package:kiran/components/drawer.dart';
import 'package:kiran/conistants.dart';
import "../extensions/hover_extensions.dart";

class EducationScreen extends StatefulWidget {
  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0x000000).withOpacity(0.5),
        drawer: MyDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    hoverColor: Colors.green,
                    icon: Icon(
                      Icons.apps,
                      color: headColor,
                    ),
                    iconSize: 30,
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ).showCursorOnHover,
                  Text(
                    "Kiran  ",
                    style: TextStyle(fontSize: 50, color: headColor),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(),
            )
          ],
        ),
      ),
    );
  }
}
