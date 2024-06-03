import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:realprojectflutter/models/Summary_Model.dart';
import 'package:realprojectflutter/plugins/http.dart';

Future<SummaryModel> loadSummary() async {
  final res = await GetRequest("summary");

  final data = jsonDecode(res.body)['data'];
  return SummaryModel(
    expenses: data['expenses'],
    income: data['income'],
    openingBalance: data['openingBalance'],
    maxExpense: data['maxExpense'],
    totalTransactionThisMonth: data['totalTransactionsThisMonth'],
  );
}
