class Student {
  String studentId;
  String studentName;
  int studentAge;
  String phoneNumber;
  String university;

  Student({
    required this.studentId,
    required this.studentName,
    required this.studentAge,
    required this.phoneNumber,
    required this.university,
  });

  String get getStudentId => studentId;
  set setStudentId(String id) => studentId = id;

  String get getStudentName => studentName;
  set setStudentName(String name) => studentName = name;

  int get getStudentAge => studentAge;
  set setStudentAge(int age) => studentAge = age;

  String get getPhoneNumber => phoneNumber;
  set setPhoneNumber(String number) => phoneNumber = number;

  String get getUniversity => university;
  set setUniversity(String uni) => university = uni;
}

void main() {
  Student student1 = Student(
    studentId: 'S123',
    studentName: 'Alice',
    studentAge: 20,
    phoneNumber: '123-456-7890',
    university: 'XYZ University',
  );

  print(student1.getStudentId);
  print(student1.getStudentName);
  print(student1.getStudentAge);
  print(student1.getPhoneNumber);
  print(student1.getUniversity);
}
