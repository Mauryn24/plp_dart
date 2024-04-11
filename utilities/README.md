# Dart Utilities: Enums, Date/Time, and Asynchronous Programming

This repository demonstrates how to use enums, handle date/time, and work with asynchronous programming in Dart.

## Enums

Enums in Dart are used to represent a fixed number of constant values. They are defined using the `enum` keyword. Enums are useful for defining a set of related constants, such as days of the week, status codes, etc.

### Example:

```dart```
enum Status {
  pending,
  approved,
  rejected,
  canceled,
}

void main() {
  Status currentStatus = Status.approved;
  print('Current status: $currentStatus');
}

## Date and Time
Dart provides the DateTime class in the dart:core library to work with dates and times. 
You can create DateTime objects to represent specific points in time, and then perform various operations on them.

### Example

import 'dart:core';

void main() {
  DateTime now = DateTime.now();
  print('Current date and time: $now');

  DateTime specificDate = DateTime(2023, 12, 25);
  print('Specific date: $specificDate');

   <!-- Date manipulation -->
  DateTime futureDate = now.add(Duration(days: 30));
  print('Date 30 days from now: $futureDate');

   <!-- Formatting date -->
  String formattedDate = now.toIso8601String();
  print('Formatted date: $formattedDate');
}

Additionally, you can use the intl package for more advanced date and time formatting, parsing, and manipulation. 
Include it in your pubspec.yaml file:

<!-- dependencies:
  flutter:
    sdk: flutter
  intl: ^0.17.0
 -->



Then, import and use it in your Dart code:

<!-- 
import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  print('Formatted date: $formattedDate');
}
 -->


This package provides localized formatting options as well, making it suitable for internationalization tasks.

## Asynchronous Programming
Dart provides asynchronous programming support using Futures and async / await keywords. Asynchronous programming allows you to execute non-blocking code, which is particularly useful for tasks such as network requests or file I/O operations.

### Example:
void main() async {
  print('Start');
  await delay();
  print('End');
}

Future<void> delay() async {
  await Future.delayed(Duration(seconds: 1));
  print('Delayed action');
}

In this example, the delay function waits for 1 second asynchronously before executing the delayed action. The main function is marked with async, allowing it to use await to wait for asynchronous operations.

