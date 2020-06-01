import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kiran/components/drawer.dart';
import 'package:kiran/conistants.dart';
import 'package:kiran/screens/contactscreen.dart';
import "../extensions/hover_extensions.dart";
import '../navanims/sizetrans.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Pavan Manikanta Kiran Maddu",
                              style: TextStyle(fontSize: 50, color: headColor),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "\"UI/UX Designer \nSoftware Developer \nQuick Learner\"",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            SizedBox(height: 20),
                            MaterialButton(
                              hoverColor: Colors.green,
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context, SizeRoute(page: ContactScreen()));
                              },
                              color: headColor,
                              child: Text(
                                "GET IN TOUCH",
                                style: TextStyle(fontSize: 20),
                              ),
                            ).showCursorOnHover
                          ],
                        ),
                      ),
                      Expanded(flex: 4, child: Column())
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
