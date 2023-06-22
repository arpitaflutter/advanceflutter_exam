import 'dart:convert';

import 'package:advanceflutter_exam/screens/home/model/QuizModel.dart';
import 'package:http/http.dart' as http;

class ApiHelper
{
  Future<Animal> apicall()
  async {
    String link = "https://opentdb.com/api.php?amount=10&category=27&difficulty=easy&type=multiple";

    Uri uri = Uri.parse(link);

    var response = await http.get(uri);

    var json = jsonDecode(response.body);

    Animal a1= Animal.fromJson(json);

    return a1;

  }
}