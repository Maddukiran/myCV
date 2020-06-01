import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiran/components/drawer.dart';
import 'package:kiran/conistants.dart';
import "../extensions/hover_extensions.dart";
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    String _name;
    String _email;
    String _message;
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
                    "Coffee...?",
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
                children: [
                  Row(children: [
                    Expanded(flex: 1, child: Column()),
                    Expanded(
                      flex: 10,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Leave your message here!",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white30,
                              ),
                              height: 400,
                              // color: Color(0x000000).withOpacity(0.5),
                              // color: Colors.white30,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextField(
                                    onChanged: (value) => _name = value,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Name',
                                      focusedBorder: OutlineInputBorder(),
                                      labelStyle: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      contentPadding: EdgeInsets.all(15),
                                    ),
                                  ),
                                  TextField(
                                    onChanged: (value) => _email = value,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      focusedBorder: OutlineInputBorder(),
                                      labelStyle: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      contentPadding: EdgeInsets.all(15),
                                    ),
                                  ),
                                  TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 3,
                                    onChanged: (value) => _message = value,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Message',
                                      focusedBorder: OutlineInputBorder(),
                                      labelStyle: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      contentPadding: EdgeInsets.all(15),
                                    ),
                                  ),
                                  MaterialButton(
                                    hoverColor: Colors.green,
                                    onPressed: () {},
                                    color: headColor,
                                    child: Text(
                                      "Send",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ).showCursorOnHover
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Column()),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Social Media",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(flex: 1, child: Column()),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    children: [
                                      Card(
                                        color: Color(0x000000).withOpacity(0.5),
                                        child: ListTile(
                                          leading: FaIcon(
                                            FontAwesomeIcons.linkedin,
                                            size: 30,
                                            color: headColor,
                                          ),
                                          title: Text(
                                            "Linked In",
                                            style: TextStyle(
                                                fontSize: 20, color: headColor),
                                          ),
                                          subtitle: Text(
                                            "/kiranmaddu",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          trailing: Icon(
                                            Icons.open_in_new,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          onTap: () => launch(
                                            "https://www.linkedin.com/in/kiranmaddu/",
                                          ),
                                        ),
                                        elevation: 10,
                                      ).showCursorOnHover,
                                      Card(
                                        color: Color(0x000000).withOpacity(0.5),
                                        child: ListTile(
                                          leading: FaIcon(
                                            FontAwesomeIcons.github,
                                            size: 30,
                                            color: headColor,
                                          ),
                                          title: Text(
                                            "GitHub",
                                            style: TextStyle(
                                                fontSize: 20, color: headColor),
                                          ),
                                          subtitle: Text(
                                            "/Maddukiran",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          trailing: Icon(
                                            Icons.open_in_new,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          onTap: () => launch(
                                            "https://github.com/Maddukiran",
                                          ),
                                        ),
                                        elevation: 10,
                                      ).showCursorOnHover,
                                      Card(
                                        color: Color(0x000000).withOpacity(0.5),
                                        child: ListTile(
                                          leading: FaIcon(
                                            FontAwesomeIcons.instagram,
                                            size: 30,
                                            color: headColor,
                                          ),
                                          title: Text(
                                            "Instagram",
                                            style: TextStyle(
                                                fontSize: 20, color: headColor),
                                          ),
                                          subtitle: Text(
                                            "/kiran_maddu",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          trailing: Icon(
                                            Icons.open_in_new,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          onTap: () => launch(
                                            "https://www.instagram.com/kiran_maddu/",
                                          ),
                                        ),
                                        elevation: 10,
                                      ).showCursorOnHover,
                                    ],
                                  ),
                                ),
                                Expanded(flex: 1, child: Column()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Column()),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
