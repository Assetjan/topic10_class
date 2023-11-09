void studentData(String student_id, {String? student_name, String? student_class}) {
  print('Student ID: $student_id');
  if (student_name != null && student_class != null) {
    print('Student Name: $student_name');
    print('Student Class: $student_class');
  }
}

void main() {
  // studentData('712345');
  studentData('021312', student_name: 'John Doe', student_class: 'Mathematics');
}