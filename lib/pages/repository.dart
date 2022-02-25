import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'data_model.dart';

final String url = "https://api.jsonbin.io/b/619ad47501558c731cc6d23a/2";

List<Pill> parsePill(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  var users = list.map((e) => Pill.fromJson(e)).toList();
  return users;
}

Future<List<Pill>> fetchPills() async{
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parsePill,response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
