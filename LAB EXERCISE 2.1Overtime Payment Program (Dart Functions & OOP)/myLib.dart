// myLib.dart

class Employee {
  String name;
  double basicSalary;
  double overtimeHours;
  double hourlyRate;

  // Constructor
  Employee({
    required this.name,
    required this.basicSalary,
    required this.overtimeHours,
    required this.hourlyRate,
  });

  // Method to calculate total salary
  double calculateTotalSalary() {
    double overtimePay = overtimeHours * hourlyRate;
    return basicSalary + overtimePay;
  }
}
