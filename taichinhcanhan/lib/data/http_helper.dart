import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper {
  // https://httpbin.org/cache/{value}
  final String authority = 'httpbin.org';
  final String path = 'anything';
  final List<Map<String, dynamic>> data = [
    {
      'date': '2021/10/20',
      'amount': 1250,
      'description': 'Food',
      'category': 'Groceries',
      'review': 'Must have',
      'userid': 'pqa.dev',
      'uuid': 'b642910b-3c8b-46ae-bdd4-188bed1df661',
    },
    {
      'date': '2021/10/21',
      'amount': 1250,
      'description': 'Food',
      'category': 'Groceries',
      'review': 'Must have',
      'userid': 'pqa.dev',
      'uuid': 'b642910b-3c8b-46ae-bdd4-188bed1df662',
    },
  ];

  final Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<String> getExpenses() async {
    Uri uri = Uri.https(authority, path);
    http.Response result =
        await http.post(uri, headers: headers, body: jsonEncode(data));

    return result.body;
  }
}
