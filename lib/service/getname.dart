import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
// import 'package:teque_machinetest/model/apimode.dart';

Future getname() async {
  const url = "http://192.168.29.160:8000/api/v1/level-2/parent/new-child/";
  const token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI1NjI5MzUwLCJpYXQiOjE3MjU2MDc3NTAsImp0aSI6IjA3M2Y5MmZhZTYyODQyZDhiM2Y2ZGQ2NDc2OWIzYmYxIiwidXNlcl9pZCI6IjJlNGUyNTFkLWI5ZWMtNDQ3NC1iOTI2LTM3ZjE0YTU1M2Q1YiIsInRpbWVjb2RlIjoiMjAyNDA5MDYxMjU5IiwibWl4ZXIiOiJkVEowZEVKcFIxVm9jelpXYzNoTk16VXhhSGREWHpOS05VRk9Va0l0VlhKc1VVNTZUMmRyVGw5TlJUMD0ifQ.Y8UavNbhO-BJp8cT34QX965dpKVbXomHxIIl2LDXYMg";
 

  try {
    final response = await http
        .get(Uri.parse(url), headers: {"Authorization": "Bearer $token"});
    log(token.toString());
    log(response.toString());
    if (response.statusCode == 200) {
      log(token.toString());

      // var responsebody=jsonDecode(response.body);
      // var data=Apimodel.
    } else {
      log("Server Error: ${response.statusCode}");
      throw Exception("Server Error: ${response.statusCode}");
    }
  } catch (error) {
    log("Error during API call: $error");
    throw Exception("Error during API call: $error");
  }
}
