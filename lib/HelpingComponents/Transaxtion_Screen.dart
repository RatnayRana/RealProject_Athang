import 'package:flutter/material.dart';
import 'package:realprojectflutter/models/Transactions_model.dart';

class TransaxtionScreen extends StatelessWidget {
  final List<TransactionModel> transactions;

  const TransaxtionScreen({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFB7549),
        title: Text(
          "Transaction",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: transactions
              .map(
                (transaction) => ListTile(
                  title: Text(transaction.title),
                  subtitle: Text(transaction.note),
                  trailing: Text('Nu. ${transaction.amount}',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: transaction.type == 'EXPENSE'
                              ? Colors.red
                              : Colors.green)),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
