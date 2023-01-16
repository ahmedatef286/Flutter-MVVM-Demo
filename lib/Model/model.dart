//TODO: add your model class here
class School {
  //attributes

  String name;
  String address;
  String numberOfStudents;
  String numberOfTeachers;

  //constructors
  School(
      {required this.name,
      required this.address,
      required this.numberOfStudents,
      required this.numberOfTeachers});

  School.fromJson(Map<String, dynamic> json)
      : name = json['School Name'],
        address = json['School Address'],
        numberOfStudents = json['Number of Students'],
        numberOfTeachers = json['Number of Teachers'];
  /* //extracting numbers from string
    numberOfStudents = int.parse(json['Number of Students']
        .toString()
        .replaceAll(RegExp(r'[^0-9]'), ''));
    numberOfTeachers = int.parse(json['Number of Teachers']
        .toString()
        .replaceAll(RegExp(r'[^0-9]'), '')); */

}
