import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:kiran/components/drawer.dart';
import 'package:kiran/screens/pdfviewerscreen.dart';
import 'package:path_provider/path_provider.dart';
import "../extensions/hover_extensions.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiran/conistants.dart';

const String _documentPath = 'PDFs/Pavan Manikanta kiran maddu.pdf';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  Future<String> prepareTestPdf() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_documentPath);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_documentPath';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

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
                    "About Me",
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
                              "Education",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.graduationCap,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Sri Chandrasekharendra Saraswathi Viswa Mahavidyalaya",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "2016 - 2020 \nB.E. Computer Science and Engineering \nCGPA: 8.59",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              elevation: 10,
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
                                  "Triveni Educational Society",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "2014 - 2016 \nIntermediate MPC \nPercentage: 93.60",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.child,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Zilla Parishad Boys High School",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "2013 - 2014 \n10th Class (SSC) \nCGPA: 8.80",
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
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Skills",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.code,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Programming Languages",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "C \nC++ \nJava \nPython",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.objectGroup,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "UI/UX",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "HTML, CSS, Bootstrap, ASO.NET,\nLaravel PHP, WordPress, VB.NET, \nFlutter, React Native",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              elevation: 10,
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.database,
                                  size: 35,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Data Base",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "SQL \nNode.js \nFirestore",
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
                              "Resume",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.scroll,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "My Resume",
                                  style:
                                      TextStyle(fontSize: 20, color: headColor),
                                ),
                                subtitle: Text(
                                  "View/Download",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () {
                                  prepareTestPdf().then((path) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FullPdfViewerScreen(path),
                                      ),
                                    );
                                  });
                                },
                              ),
                              elevation: 10,
                            ).showCursorOnHover,
                            Text(
                              "Hobbies",
                              style: TextStyle(
                                fontSize: 50,
                                color: headColor,
                              ),
                            ),
                            Card(
                              color: Color(0x000000).withOpacity(0.5),
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.camera,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Photography",
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
                                  FontAwesomeIcons.crop,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Photoshop",
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
                                  FontAwesomeIcons.youtube,
                                  size: 30,
                                  color: headColor,
                                ),
                                title: Text(
                                  "Youtube Surfing",
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
