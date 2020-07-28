import 'package:SIH/utilities/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SitewiseInventoryPage extends StatefulWidget {
  static const routeName = "SitewiseInventoryPage";

  @override
  _SitewiseInventoryPageState createState() => _SitewiseInventoryPageState();
}

class _SitewiseInventoryPageState extends State<SitewiseInventoryPage> {
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
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection("inventory").snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData)
                  return CircularProgressIndicator(
                    semanticsValue: 'Loading...',
                    semanticsLabel: 'Awaiting Data',
                  );
                final int messageCount = snapshot.data.documents.length;
                return ListView.builder(
                  itemCount: messageCount,
                  itemBuilder: (_, int index) {
                    final DocumentSnapshot document =
                        snapshot.data.documents[index];
                    print(document.data);
                    return ListTile(
                      title: ProjectBox(document: document),
                      subtitle:
                          Text('Project Site ${index + 1} of $messageCount'),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectBox extends StatelessWidget {
  const ProjectBox({
    Key key,
    @required this.document,
  }) : super(key: key);

  final DocumentSnapshot document;

  @override
  Widget build(BuildContext context) {
    var keys = document.data.keys.toList();
    var values = document.data.keys.toList();
    print(document.data.length);

    return Container(
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              document.documentID != null
                  ? document.documentID.toString()
                  : '<No message retrieved>',
              style: Theme.of(context).textTheme.headline4,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            SizedBox(height: 10.0),
            Column(
              children: getChildren(document: document),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  List<Widget> getChildren({var document}) {
    return List.generate(
      document.data.length,
      (index) => Text(
        document.data[index].toString() +
            ': ' +
            document.data[index].toString(),
      ),
    );
  }
}
