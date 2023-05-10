import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';

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
        amount: 8000.00,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Watch A Movie",
        amount: 0.00,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: "Buy Tomatoes, Potatoes, Rice, Green Chilly",
        amount: 400.00,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: "Go To Airport & Come Home From Airport",
        amount: 2000.00,
        date: DateTime.now(),
        category: Category.travel),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("The Chart"), Text("Expense..")],
      ),
    );
  }
}
