import 'dart:io';

void main() {
  print('=== Welcome to the Pizza Order System ===\n');

  // Display prices
  print('Menu Prices:');
  print('1. Small (S)  : \$5 USD');
  print('2. Medium (M) : \$7 USD');
  print('3. Large (L)  : \$10 USD\n');

  bool orderAnother = true;

  // While loop for continuous ordering
  while (orderAnother) {
    // Input pizza size
    stdout.write('Enter pizza size (S for Small, M for Medium, L for Large): ');
    String? sizeInput = stdin.readLineSync()?.trim().toUpperCase();

    // While loop for quantity input validation
    int quantity = 0;
    while (true) {
      stdout.write('Enter quantity: ');
      String? qtyInput = stdin.readLineSync();
      try {
        quantity = int.parse(qtyInput ?? '');
        if (quantity > 0) break;
        print('Quantity must be greater than 0. Please try again.');
      } catch (e) {
        print('Invalid input. Please enter a valid integer for quantity.');
      }
    }

    double pricePerUnit = 0;
    String sizeName = '';

    // Switch statement to determine price and size name
    switch (sizeInput) {
      case 'S':
        pricePerUnit = 5.0;
        sizeName = 'Small';
        break;
      case 'M':
        pricePerUnit = 7.0;
        sizeName = 'Medium';
        break;
      case 'L':
        pricePerUnit = 10.0;
        sizeName = 'Large';
        break;
      default:
        print('Invalid size selected! Order for this item cancelled.\n');
        continue;
    }

    // Calculate total payment
    double totalPayment = pricePerUnit * quantity;

    // Print receipt and payment details
    print('\n--- Order Summary ---');
    print('Size: $sizeName');
    print('Price per unit: \$$pricePerUnit USD');
    print('Quantity: $quantity');
    print('Total Payment: \$$totalPayment USD');
    print('---------------------\n');

    // Prompt to continue or exit loop
    stdout.write('Would you like to place another order? (y/n): ');
    String? choice = stdin.readLineSync()?.trim().toLowerCase();
    if (choice != 'y') {
      orderAnother = false;
      print('\nThank you for your order! Goodbye.');
    } else {
      print('\n--- Starting New Order ---\n');
    }
  }
}
