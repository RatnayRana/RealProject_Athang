import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:realprojectflutter/models/CurrentBalance_model.dart';
import 'package:realprojectflutter/plugins/http.dart';

Future<List<CurrentbalanceModel>> loadTransactionB() async {
  final res = await GetRequest("account/me");
  print(jsonDecode(res.body)['data']);
  List<CurrentbalanceModel> temp = [];
  for (final data in jsonDecode(res.body)['data']) {
    temp.add(CurrentbalanceModel(
        title: data['title'],
        img: data['img'],
        openingBalance: data['openingBalance']));
  }

  return temp;
}
