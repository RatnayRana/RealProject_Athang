import 'package:flutter/material.dart';
import 'package:realprojectflutter/models/SummaryRepo.dart';
import 'package:realprojectflutter/models/Summary_Model.dart';

class Accountsummary extends StatefulWidget {
  const Accountsummary({super.key});

  @override
  State<Accountsummary> createState() => _AccountsummaryState();
}

class _AccountsummaryState extends State<Accountsummary> {
  SummaryModel summary = SummaryModel();
  @override
  @override
  void initState() {
    loadData();
  }

  Future<void> loadData() async {
    SummaryModel res = await loadSummary();
    setState(() {
      summary = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      // color: Colors.black,
      child: Stack(
        children: [
          Container(
            height: 165,
            color: Colors.red,
            // margin: EdgeInsets.all(16),
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                height: 240,
                width: 500,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(16),
                // color: Color(0xFFFB7549),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Current Balance",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Text(
                              "Rs" + summary.openingBalance.toString(),
                              style:
                                  TextStyle(fontSize: 32, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 4,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Icon(
                                                  Icons.arrow_upward,
                                                  size: 36,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(5),
                                                child: Column(
                                                  // mainAxisAlignment: MainAxisAlignment.#,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Income",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      "Rs.${summary.income} ",
                                                      style: TextStyle(
                                                          fontSize: 24,
                                                          color: Colors.black),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // Container(
                                      //   width: 100,
                                      //   height: 20,
                                      //   color: Colors.yellow,
                                      //   margin: EdgeInsets.all(8),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // width: 200,
                                  // color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.arrow_downward,
                                              size: 36,
                                              color: Colors.red,
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Expense",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Rs. ${summary.expenses}",
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        color: Colors.black),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    //
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
