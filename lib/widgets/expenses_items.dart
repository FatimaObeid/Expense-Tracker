import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  Expense expenseItem;
  ExpenseItem({required this.expenseItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expenseItem.title),
            SizedBox(height: 4),
            Row(children: []),
          ],
        ),
      ),
    );
  }
}
