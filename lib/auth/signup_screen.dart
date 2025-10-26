import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: const Text('Back to Login'),
        ),
      ),
    );
  }
}
