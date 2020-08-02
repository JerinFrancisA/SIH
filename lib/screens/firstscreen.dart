import 'package:flutter/material.dart';
import 'package:SIH/custom_widgets/menu_item.dart';
import 'package:SIH/utilities/constants.dart';
import 'home_page.dart';
import 'package:SIH/screens/login.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MenuItem(
                    color: kMenuColor1,
                    onTap: () {
                      Navigator.pushNamed(context, Login.routeName);
                    },
                    icon: Icons.local_convenience_store,
                    text: 'Contrator Login',
                  ),
                ),
                Expanded(
                  child: MenuItem(
                    color: kMenuColor6,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        HomePage.routeName,
                      );
                    },
                    icon: Icons.public,
                    text: 'Anonymous Public Portal',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
