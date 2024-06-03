import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realprojectflutter/models/Transactions_model.dart';
import 'package:realprojectflutter/plugins/http.dart';

Future<List<TransactionModel>> loadTransaction() async {
  final res = await GetRequest("transaction/me");
  List<TransactionModel> temp = [];
  for (final data in jsonDecode(res.body)['data']) {
    temp.add(TransactionModel(
      id: data['id'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
      title: data['title'],
      note: data['note'],
      document: data['document'],
      amount: data['amount'],
      type: data['type'],
    ));
  }

  return temp;
}
