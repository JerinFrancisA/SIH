import 'package:SIH/custom_widgets/input_box..dart';
import 'package:flutter/material.dart';

class WeeklyFeedbackPage extends StatefulWidget {
  static const routeName = "WeeklyFeedbackPage";

  @override
  _WeeklyFeedbackPageState createState() => _WeeklyFeedbackPageState();
}

class _WeeklyFeedbackPageState extends State<WeeklyFeedbackPage> {
  var actualDaysCharged = InputBox(
    hintText: 'Enter Actual Days Charged',
    labelText: 'Actual Days Charged',
    keyboardType: TextInputType.number,
  );
  var areaNumber = InputBox(
    hintText: 'Enter Area Number',
    labelText: 'Area Number',
    keyboardType: TextInputType.number,
  );
  var contractLabourersThisWeek = InputBox(
    hintText: 'Enter Contract labourers this week',
    labelText: 'Contract labourers(this week)',
    keyboardType: TextInputType.number,
  );
  var contractor = InputBox(
    hintText: 'Enter Contractor',
    labelText: 'Contractor Name',
    keyboardType: TextInputType.text,
  );
  var minimumDaysAWeek = InputBox(
    hintText: 'Enter Minimum Days a Week',
    labelText: 'Minimum Days a Week',
    keyboardType: TextInputType.number,
  );
  var numberOfPlots = InputBox(
    hintText: 'Enter Number of Plots',
    labelText: 'Number of Plots',
    keyboardType: TextInputType.number,
  );
  var percentOfContractComplete = InputBox(
    hintText: 'Enter Contract Completion %',
    labelText: 'Contract Completion %',
    keyboardType: TextInputType.number,
  );
  var typeOfWork = InputBox(
    hintText: 'Enter Type of Work',
    labelText: 'Type of Work',
    keyboardType: TextInputType.text,
  );
  var wagePerDay = InputBox(
    hintText: 'Enter Wages per Day',
    labelText: 'Wages per Day',
    keyboardType: TextInputType.number,
  );

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
            'Weekly Feedback',
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
          child: ListView(
            children: <Widget>[
              actualDaysCharged,
              areaNumber,
              contractLabourersThisWeek,
              contractor,
              minimumDaysAWeek,
              numberOfPlots,
              percentOfContractComplete,
              typeOfWork,
              wagePerDay
            ],
          ),
        ),
      ),
    );
  }
}
