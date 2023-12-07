import 'package:flutter/material.dart';
import 'package:aplikasi_food_order/api/api_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final ApiService apiService = ApiService();

  void _performLogin() async {
    final String username = usernameController.text.trim();
    final String password = passwordController.text.trim();

    try {
      final Map<String, dynamic> userData = await apiService.login(username, password);

      print('Login berhasil: $userData');
    } catch (e) {
      print('gagal lgon: $e');
    }

  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}