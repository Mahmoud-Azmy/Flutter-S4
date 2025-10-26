import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 136, 180, 216),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),

          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Center(
                  child: Text(
                    'login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text('Email', style: TextStyle(color: Colors.grey)),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 226, 218, 218),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'enter your email',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.email, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                Text('password', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 5),
                TextFormField(
                  validator: (value) {
                    if (isVisible) {
                      return 'please enter your password';
                    }
                    return null;
                  },
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off, color: Colors.grey),
                      onPressed: () {
                        isVisible = !isVisible;
                        setState(() {});
                      },
                    ),
                    fillColor: const Color.fromARGB(255, 226, 218, 218),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text('login'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('dont have an account?'),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'sign up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
