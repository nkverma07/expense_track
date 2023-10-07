import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.dateTime,
      required this.category})
      : id = const Uuid().v4();

  final String id;
  final String title;
  final double amount;
  final DateTime dateTime;
  final Category category;
}