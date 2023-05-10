import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(
             horizontal: 20,
            vertical: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text('\Rs. ${expense.amount.toStringAsFixed(2)}'),
                  //toStringAsFixed 12.3433 => 12.34 convert the typo float to real value
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox( width:8),
                      Text( expense.formattedDate),
                    ],
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}

// class _Expenseitem