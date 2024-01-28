import 'package:flutter/material.dart';
import 'package:internshala_clone/models/get_internship.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InternshipProvider extends ChangeNotifier {
  List<Internship> internshipData = [];
  bool isLoading = true;
  Future getApi() async {
    var response = await http
        .get(Uri.parse('https://internshala.com/flutter_hiring/search'));
    var ids = jsonDecode(response.body)['internship_ids'];
    for (var i in ids) {
      print(i);
      print(i.runtimeType);
      var data = jsonDecode(response.body)['internships_meta'][i.toString()];
      print(data);
      internshipData.add(Internship.fromJson(data));
    }
    isLoading = false;
    notifyListeners();
  }
}
