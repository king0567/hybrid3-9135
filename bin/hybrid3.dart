import 'package:hybrid3/hybrid3.dart' as hybrid3;

void main() {
  var jsonString = [
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
  ];

  var student = hybrid3.Students(jsonString);

  student.output();
  student.sort("email");
  student.output();
  student.plus(
      {"first": "Paul", "last": "King", "email": "paulking1234@gmail.com"});
  student.output();
  student.remove("Paul");
  student.output();
}
