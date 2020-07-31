import 'package:flutter/cupertino.dart';

class WeeklyFeedbackData {
  final int actualDaysCharged;
  final int areaNumber;
  final int contractLabourersThisWeek;
  final String contractor;
  final DateTime date;
  final Map itemsOfWork;
  final Map materials;
  final int minimumDaysAWeek;
  final int numberOfPlots;
  final int percentOfContractComplete;
  final int typeOfWork;
  final int wagePerDay;

  WeeklyFeedbackData({
    @required this.actualDaysCharged,
    @required this.areaNumber,
    @required this.contractLabourersThisWeek,
    @required this.contractor,
    @required this.date,
    @required this.itemsOfWork,
    @required this.materials,
    @required this.minimumDaysAWeek,
    @required this.numberOfPlots,
    @required this.percentOfContractComplete,
    @required this.typeOfWork,
    @required this.wagePerDay,
  });
}
