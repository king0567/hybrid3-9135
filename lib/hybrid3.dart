class Students {
  late List<Map<String, String>> people;

  Students(List<Map<String, String>> peopleData) {
    people = peopleData;
  }

  void sort(String field) {
    bool hasField = people.any((person) => person.containsKey(field));
    List fieldOptions = [];

    for (var person in people) {
      person.forEach((key, value) {
        if (fieldOptions.contains(key)) {
          return;
        } else {
          fieldOptions.add(key);
        }
      });
    }

    if (hasField) {
      people.sort(
        (a, b) {
          var fieldA = a[field] ?? '';
          var fieldB = b[field] ?? '';

          return fieldA.compareTo(fieldB);
        },
      );
    } else {
      print(
          "That field doesn't exist in our data. Try sorting by ${fieldOptions.toString()} ");
    }
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field) {
    bool hasValue = people.any((person) => person.containsValue(field));
    if (hasValue) {
      people.removeWhere((item) => item.containsValue(field));
    } else {
      print("That value doesn't exist in our data.");
    }
  }
}
