import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiran/components/drawer.dart';
import 'package:kiran/conistants.dart';
import "../extensions/hover_extensions.dart";
import 'package:url_launcher/url_launcher.dart';

class WorkScreen extends StatefulWidget {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
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
                    "My Works",
                    style: TextStyle(fontSize: 50, color: headColor),
                  ),
                  Text(
                    "Kiran  ",
                    style: TextStyle(fontSize: 50, color: headColor),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(flex: 1, child: Column()),
                      Expanded(
                        flex: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Web Projects",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.university,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Indian Arch",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "A static website that illustrates about the Ancient Indian Architecture.",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () => launch(
                                    "https://maddukiran.github.io/IndianArch/"),
                              ),
                              elevation: 10,
                            ).showCursorOnHover,
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.prayingHands,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "ShaktiPeeth",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "A static website that lists all the ShaktiPeeth in India and shows temple as well as goddess images",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () => launch(
                                    "https://maddukiran.github.io/ShaktiPeeth/"),
                              ),
                              elevation: 10,
                            ).showCursorOnHover,
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.calculator,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Simple CGPA Convertor",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "A very basic HTML page that converts CGPA to Percentage (JS)",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () => launch(
                                    "https://maddukiran.github.io/CGPA_Converter/"),
                              ),
                              elevation: 10,
                            ).showCursorOnHover,
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Column()),
                      Expanded(
                        flex: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile Apllications",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.car,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Vehicle Fleet Management - SmartFleet",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "Mobile application that is designed as a part of the Project VFMS.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.user,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Vehicle Fleet Management - SmartDriver",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "Mobile application that is designed as a part of the Project VFMS.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              elevation: 10,
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Column()),
                      Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "GitHub Repos",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.github,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Indian Arch",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.githubAlt,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Shakti Peeth",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.githubSquare,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "CGPA Convertor",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.github,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Smart Fleet",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.githubAlt,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Smart Driver",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                              ),
                              elevation: 10,
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Column()),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
