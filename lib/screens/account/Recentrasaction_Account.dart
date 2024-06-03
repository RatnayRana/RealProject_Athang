import 'package:flutter/material.dart';
import 'package:realprojectflutter/base/text_styles.dart';
import 'package:realprojectflutter/models/CurrentBalance_model.dart';

class RecentrasactionAccount extends StatelessWidget {
  final CurrentbalanceModel account;
  RecentrasactionAccount({required this.account});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFB7549),
        title: Text(
          "Account",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Image.network(
                          "${account.img}",
                          width: 150,
                          height: 80,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${account.title}",
                                style: TypoStyles().kSectionHeader,
                              ),
                              Text(
                                "${account.openingBalance}",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      children: [Icon(Icons.edit), Icon(Icons.delete)],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
