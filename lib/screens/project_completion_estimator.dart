import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProjectCompletionEstimator extends StatefulWidget {
  static const routeName = "ProjectCompletionEstimator";

  @override
  _ProjectCompletionEstimatorState createState() =>
      _ProjectCompletionEstimatorState();
}

class _ProjectCompletionEstimatorState
    extends State<ProjectCompletionEstimator> {
  File _image;
  final picker = ImagePicker();

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

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
            'Project Completion Estimator',
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
            child: Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Icon(Icons.camera),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Icon(Icons.image),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
