import 'dart:convert';

import 'package:base_project/DbInfo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyProvider extends ChangeNotifier {
  bool loading = false;
  String error = '';
  void invertLoading() {
    loading = !loading;
    notifyListeners();
  }

  getDB_Info() async {
    var url = Uri.parse(
        'http://api.faastdemo.com/Api/MultiTenant/GetClientInfo?pin=vogue');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      return DbInfo.fromJson(jsonDecode(response.body));
    } else {
      error = response.toString();
    }
  }
}
