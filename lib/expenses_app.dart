import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Text('Overlay Text'),
    );
  }

  final List<Expense> _registeredExpensesList = [
    Expense(
      amount: 5,
      date: DateTime.now(),
      title: 'Burger',
      category: Category.food,
    ),
    Expense(
      title: 'Papers',
      amount: 15,
      date: DateTime(2025, 5, 7),
      category: Category.work,
    ),
    Expense(
      title: 'Movie',
      amount: 5.5,
      date: DateTime(2025, 5, 17),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ExpensesList(expensesList: _registeredExpensesList);
  }
}
