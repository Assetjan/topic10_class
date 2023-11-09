class Student{
  String name = "Demeu";
}
class Marks{
  int points = 100;
}
void main(){
  Student student = Student();
  Marks marks = Marks();
  Marks baga = marks;
  print("${student.name} ${marks.points}");
  student.name = "Yers";
  baga.points = 90;
  print("${student.name} ${marks.points}");
}