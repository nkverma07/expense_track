import 'package:expense_track/widgets/expenses_list/expenses_list.dart';
import 'package:expense_track/models/expense.dart';
import 'package:expense_track/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 16.99,
      dateTime: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Cinema",
      amount: 56.99,
      dateTime: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: "Pizza",
      amount: 8.69,
      dateTime: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Masoori",
      amount: 16.99,
      dateTime: DateTime.now(),
      category: Category.travel,
    )
  ];
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expanses App"),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
