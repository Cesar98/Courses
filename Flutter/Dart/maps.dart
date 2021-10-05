void main() {
  /* Map person = {
    'name': 'CUAR',
    'age': 23,
    'soltero': true,
  }; */

  Map<String, dynamic> person = {
    'name': 'CUAR',
    'age': 23,
    'soltero': true,
  };

  person.addAll({'nickname': 'Niggi'});

  print(person);
}
