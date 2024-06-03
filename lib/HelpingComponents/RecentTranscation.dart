import 'package:flutter/material.dart';
import 'package:realprojectflutter/HelpingComponents/Transaxtion_Screen.dart';
import 'package:realprojectflutter/base/text_styles.dart';
import 'package:realprojectflutter/models/TransactionAuth.dart';
import 'package:realprojectflutter/models/Transactions_model.dart';

class Recenttranscation extends StatefulWidget {
  const Recenttranscation({super.key});

  @override
  State<Recenttranscation> createState() => _RecenttranscationState();
}

class _RecenttranscationState extends State<Recenttranscation> {
  List<TransactionModel> transactions = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final res = await loadTransaction();
    setState(() {
      transactions = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transactions",
                style: TypoStyles().kPageHeader,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TransaxtionScreen(transactions: transactions)));
                },
                child: Text(
                  "See all",
                  style: TextStyle(color: Color(0xFFFB7549), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        Container(
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
      ]),
    );
  }
}
