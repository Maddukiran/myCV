import 'package:flutter/material.dart';
import 'package:kiran/conistants.dart';
import 'package:kiran/screens/aboutscreen.dart';
import 'package:kiran/screens/contactscreen.dart';
import 'package:kiran/screens/educationscreen.dart';
import 'package:kiran/screens/homescreen.dart';
import 'package:kiran/screens/workscreen.dart';
import "../extensions/hover_extensions.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../navanims/sizetrans.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Color(0x000000).withOpacity(0.5),
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage("images/mypic.jpg"),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: headColor,
              child: ListTile(
                hoverColor: Colors.green,
                leading: FaIcon(
                  FontAwesomeIcons.home,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/landingpage');
                  Navigator.pushReplacement(
                    context,
                    SizeRoute(page: HomeScreen()),
                  );
                },
              ).showCursorOnHover,
            ),
            Card(
              color: headColor,
              child: ListTile(
                hoverColor: Colors.green,
                leading: FaIcon(
                  FontAwesomeIcons.addressCard,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/education');
                  Navigator.pushReplacement(
                      context, SizeRoute(page: AboutScreen()));
                },
              ).showCursorOnHover,
            ),
            Card(
              color: headColor,
              child: ListTile(
                hoverColor: Colors.green,
                leading: FaIcon(
                  FontAwesomeIcons.tools,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  "Work",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/education');
                  Navigator.pushReplacement(
                      context, SizeRoute(page: WorkScreen()));
                },
              ).showCursorOnHover,
            ),
            Card(
              color: headColor,
              child: ListTile(
                hoverColor: Colors.green,
                leading: FaIcon(
                  FontAwesomeIcons.pencilRuler,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  "Blog",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/education');
                  Navigator.pushReplacement(
                      context, SizeRoute(page: EducationScreen()));
                },
              ).showCursorOnHover,
            ),
            Card(
              color: headColor,
              child: ListTile(
                hoverColor: Colors.green,
                leading: FaIcon(
                  FontAwesomeIcons.phone,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  "Contact",
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/education');
                  Navigator.pushReplacement(
                      context, SizeRoute(page: ContactScreen()));
                },
              ).showCursorOnHover,
            ),
          ],
        ),
      ),
    );
  }
}
