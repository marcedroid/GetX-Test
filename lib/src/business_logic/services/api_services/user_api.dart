import 'dart:convert' as convert;

import 'package:getx_demo/src/business_logic/models/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  UserApi._();

  static UserApi _instance = UserApi._();

  factory UserApi() => _instance;

  Future<List<User>> getUsers(int page) async {
    final uri = Uri(
      scheme: 'https',
      host: 'reqres.in',
      path: '/api/users',
      queryParameters: {'page': '$page', 'delay': '3'},
    );

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      return (jsonResponse['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } else {
      print('$response');
      return null;
    }
  }
}
