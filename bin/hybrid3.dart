import 'dart:convert';

import 'package:hybrid3/hybrid3.dart' as hybrid3;

void main() {
  var jsonString = '''[
    {
      "first": "Steve",
      "last": "Griffith",
      "email": "griffis@algonquincollege.com"
    },
    {"first": "Adesh", "last": "Shah", "email": "shaha@algonquincollege.com"},
    {
      "first": "Tony",
      "last": "Davidson",
      "email": "davidst@algonquincollege.com"
    },
    {
      "first": "Adam",
      "last": "Robillard",
      "email": "robilla@algonquincollege.com"
    }
  ]''';

  var jsonDecoded = jsonDecode(jsonString);

  List<Map<String, String>> data = [];

  for (var person in jsonDecoded) {
    Map<String, String> newPerson = {};
    person.forEach((key, value) {
      newPerson[key] = value.toString();
    });
    data.add(newPerson);
  }

  var student = hybrid3.Students(data);

  student.output();
  student.sort("person");
  print("");
  student.output();
  student.plus(
      {"first": "Paul", "last": "King", "email": "paulking1234@gmail.com"});
  print("");
  student.output();
  student.remove("Paul");
  print("");
  student.output();
}
