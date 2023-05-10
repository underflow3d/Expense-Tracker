import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
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

  void _openAddExpenseOverlay() {
    // Code
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
