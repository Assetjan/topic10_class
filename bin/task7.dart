class Employee {
  String empId;
  String empName;
  double empSalary;
  String empDepartment;

  Employee({
    required this.empId,
    required this.empName,
    required this.empSalary,
    required this.empDepartment,
  });

  void calculateEmpSalary(double salary, int hoursWorked) {
    if (hoursWorked > 50) {
      double overtime = hoursWorked - 50;
      double overtimeAmount = (overtime * (salary / 50));
      empSalary += overtimeAmount;
      print('Overtime Amount: \$${overtimeAmount.toStringAsFixed(2)}');
      print('Total Salary with Overtime: \$${empSalary.toStringAsFixed(2)}');
    } else {
      print('Total Salary: \$${empSalary.toStringAsFixed(2)}');
    }
  }

  void empAssignDepartment(String newDepartment) {
    empDepartment = newDepartment;
    print('Employee Department Updated: $empDepartment');
  }

  void printEmployeeDetails() {
    print('Employee ID: $empId');
    print('Employee Name: $empName');
    print('Employee Salary: \$${empSalary.toStringAsFixed(2)}');
    print('Employee Department: $empDepartment');
  }
}

void main() {
  Employee adams = Employee(
      empId: "E7876", empName: "ADAMS", empSalary: 50000, empDepartment: "ACCOUNTING");
  adams.printEmployeeDetails();
  adams.calculateEmpSalary(50000, 55);
  adams.empAssignDepartment("HR");
  adams.printEmployeeDetails();
  print('----------------------');

  Employee jones = Employee(
      empId: "E7499", empName: "JONES", empSalary: 45000, empDepartment: "RESEARCH");
  jones.printEmployeeDetails();
  jones.calculateEmpSalary(45000, 40);
  jones.empAssignDepartment("IT");
  jones.printEmployeeDetails();
  print('----------------------');

  Employee martin = Employee(
      empId: "E7900", empName: "MARTIN", empSalary: 50000, empDepartment: "SALES");
  martin.printEmployeeDetails();
  martin.calculateEmpSalary(50000, 48);
  martin.empAssignDepartment("MARKETING");
  martin.printEmployeeDetails();
  print('----------------------');

  Employee smith = Employee(
      empId: "E7698", empName: "SMITH", empSalary: 55000, empDepartment: "OPERATIONS");
  smith.printEmployeeDetails();
  smith.calculateEmpSalary(55000, 60);
  smith.empAssignDepartment("LOGISTICS");
  smith.printEmployeeDetails();
}
