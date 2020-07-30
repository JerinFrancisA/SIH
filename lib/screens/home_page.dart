import 'package:SIH/custom_widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:SIH/screens/attendance.dart';
import 'package:SIH/screens/sitewise_inventory_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text(
            'GharSuraksha',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.format_list_bulleted),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: MenuItem(
                          onTap: null,
                          icon: Icons.face,
                          text: 'Project Completion Estimator',
                        ),
                      ),
                      Expanded(
                        child: MenuItem(
                          onTap: null,
                          icon: Icons.face,
                          text: 'Project Details',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: MenuItem(
                          onTap: null,
                          icon: Icons.face,
                          text: 'Daily Checklist',
                        ),
                      ),
                      Expanded(
                        child: MenuItem(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              SitewiseInventoryPage.routeName,
                            );
                          },
                          icon: Icons.face,
                          text: 'Sitewise Inventory',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: MenuItem(
                          onTap: () {
                            Navigator.pushNamed(context, Attendance.routeName);
                          },
                          icon: Icons.face,
                          text: 'Contruction Workers',
                        ),
                      ),
                      Expanded(
                        child: MenuItem(
                          onTap: null,
                          icon: Icons.face,
                          text: 'Feedback',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
