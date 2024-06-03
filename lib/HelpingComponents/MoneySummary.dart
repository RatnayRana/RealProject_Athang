import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:realprojectflutter/HelpingComponents/AccountCard.dart';
import 'package:realprojectflutter/base/text_styles.dart';
import 'package:realprojectflutter/models/CurrentBalanceRepo.dart';
import 'package:realprojectflutter/models/CurrentBalance_model.dart';

class Moneysummary extends StatefulWidget {
  const Moneysummary({super.key});

  @override
  State<Moneysummary> createState() => _MoneysummaryState();
}

class _MoneysummaryState extends State<Moneysummary> {
  List<CurrentbalanceModel> transactions = [];
  @override
  void initState() {
    // super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final res = await loadTransactionB();
    print(res);
    setState(() {
      transactions = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 16),
      // padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 18),
            child: Text(
              "Current Balances",
              style: TypoStyles().kSectionHeader,
            ),
          ),
          Container(
            height: 200,
            // margin: EdgeInsets.only(left: 3),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: transactions
                    .map(
                      (val) => Accountcard(val),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
