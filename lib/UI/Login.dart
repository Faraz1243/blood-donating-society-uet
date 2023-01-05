import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Donating Society'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
      ),
      body: const Center(
        child: Text("Login"),
      ),
    );
  }
}
