// main.dart
import 'myLib.dart';

void main() {
  // Creating an employee object with sample values tailored to hit the expected output
  // Example: Basic Salary = $4500, Overtime Hours = 15, Hourly Rate = $38.0
  // 15 * 38 = 570 overtime pay. Total = 4500 + 570 = 5070.0
  Employee emp = Employee(
    name: 'Ali',
    basicSalary: 4500.0,
    overtimeHours: 15.0,
    hourlyRate: 38.0,
  );

  double totalSalary = emp.calculateTotalSalary();

  print('=== Overtime Payment Program ===');
  print('Employee Name: ${emp.name}');
  print('Basic Salary: \$${emp.basicSalary} USD');
  print('Overtime Pay: \$${emp.overtimeHours * emp.hourlyRate} USD');
  print('--------------------------------');
  print('Total Salary = \$${totalSalary} USD');
}
