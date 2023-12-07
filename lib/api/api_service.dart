import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
    static const String baseUrl = "";

    Future<Map<String, dynamic>> login(String username, String password) async{
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        body: {'username': username, 'password': password},
      );

      if (response.statusCode == 200) {
        //berhasil login, kembalikan data pengguna
        return json.decode(response.body);
      } else {
        throw Exception(
          'failed to login'
        );
      }
    }
}