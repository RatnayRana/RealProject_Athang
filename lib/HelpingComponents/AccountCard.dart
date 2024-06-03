import 'package:flutter/material.dart';
import 'package:realprojectflutter/base/text_styles.dart';
import 'package:realprojectflutter/models/CurrentBalanceRepo.dart';
import 'package:realprojectflutter/models/CurrentBalance_model.dart';
import 'package:realprojectflutter/screens/account/Recentrasaction_Account.dart';

class Accountcard extends StatelessWidget {
  CurrentbalanceModel account;
  Accountcard(this.account);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RecentrasactionAccount(account: account)));
      },
      child: Container(
          height: 160,
          width: 300,
          color: Colors.white,
          margin: EdgeInsets.only(left: 16),
          child: Card(
            shadowColor: const Color.fromARGB(255, 8, 8, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 4),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${account.title}",
                          style: TypoStyles().kSectionHeader,
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage("${account.img}"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 23),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${account.openingBalance}",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Nu. 120000 this month",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
