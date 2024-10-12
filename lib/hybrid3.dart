class Students {
  late List<Map<String, String>> people;

  Students(List<Map<String, String>> peopleData) {
    people = peopleData;
  }

  void sort(String field) {
    people.sort(
      (a, b) {
        var fieldA = a[field] ?? '';
        var fieldB = b[field] ?? '';

        return fieldA.compareTo(fieldB);
      },
    );
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
    people.removeWhere((item) => item.containsValue(field));
  }
}
