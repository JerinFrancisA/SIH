import 'package:flutter/material.dart';

class PublicFeedbackPage extends StatefulWidget {
  @override
  _PublicFeedbackPageState createState() => _PublicFeedbackPageState();
}

class _PublicFeedbackPageState extends State<PublicFeedbackPage> {
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
      ),
    );
  }
}
