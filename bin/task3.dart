class Student{
  String name = "Demeu";
}
class Marks{
  int points = 100;
}
void main(){
  Student student = Student();
  Marks marks = Marks();
  print("${student.name} ${marks.points}");
}