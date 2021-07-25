import 'dart:convert';

import 'package:base_project/DbInfo.dart';
import 'package:base_project/UserInfo.dart';
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
    // var url = Uri.parse(
    //     'http://api.faastdemo.com/Api/MultiTenant/GetClientInfo?pin=vogue');

    // var response = await http.get(url);
    // if (response.statusCode == 200) {
    await Future.delayed(Duration(seconds: 2), () {
      var a = DbInfo.fromJson({
        "ClientId": 8,
        "IsSuccess": true,
        "Message": "Success",
        "DbInfo":
            "H4sIAAAAAAAEAA3NzU/acBjA8cRlB2+LJzONhyU7dQsvtbTElwRJeImEirTr1uxCFywttAgCYr38Ek87kEXUGBJx4AHRZHNusOChHJ4n3WX/xe8vke/9ky8lXRFv1mASoaSDbXBhvACPc/ANR5T05zW8Z/AS/lJygwP8/hnc2Dr8gVYGHygZiDvemderei4lT4sNnNa8Xk6HEbbxx782DCQcQgsn3hSHGgzBZWAMo1fYx+6bl9CKv8XOMTzNYRcGeIkdfMQL7K5AH27hDn+/xq/vgi9ClJwt4QVM9eX5mX6wkjCbXaXhFyXX4OIp/lyEe+wv4ETEHg7/X+HJMvQoOYfx+vtZm/uKWcp9cBK6nZWlIzMazjY5Qy4Fwo7DBCKNWJ3jswe2kd+qMFZ+x8pWypwmpuVouqkIiagW98uFowO9XpdsthY8tAUj5ZirRZWPKJrKlhizIIaKfobPxI3gtj//McgnldWUPxQQY1KR5XZ3Y5appni9GDZ8grYnS7V9R2AFlrObQqVsRzQ5oUqmT80pll6ofvnk265VnWhmY+MZiT8NTpkBAAA=",
        "ExpiryDate": "2025-04-25T00:00:00",
        "EndDate": null,
        "ExpiryMessage": "Your Subscription is soon going to be expired"
      });
      return a;
    });
    // } else {
    //   error = response.toString();
    // }
  }

  // getUser_Info(String dbInfo,String userName, String password) async {
  //   var url = Uri.parse(
  //       'http://api.faastdemo.com/Api/token');

  //   // var response = await http.post(url,headers: {"x-conn":});
  //   if (response.statusCode == 200) {
  //     return UserInfo.fromJson(jsonDecode(response.body));
  //   } else {
  //     error = response.toString();
  //   }
  // }
}
