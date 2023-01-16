//TODO: add your view model class here

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../Model/model.dart';

class SchoolViewModel extends ChangeNotifier {
  //attributes
  var school = School(
      name: "School Name",
      address: "School Address",
      numberOfStudents: "Number of Students",
      numberOfTeachers: "Number of Teachers");

  //getters
  String get name {
    return school.name;
  }

  String get address {
    return school.address;
  }

  String get numberOfStudents {
    return school.numberOfStudents;
  }

  String get numberOfTeachers {
    return school.numberOfTeachers;
  }

  //behaviour
  Future<void> loadDataFromLocalJson() async {
    final byteData =
        await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final data = await jsonDecode(byteData);
    school = School.fromJson(data[0]);
    notifyListeners();
  }
}
