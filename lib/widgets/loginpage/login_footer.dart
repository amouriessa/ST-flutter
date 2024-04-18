import 'package:bromindo_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key, required this.onPressedLogin}) : super(key: key);

  final VoidCallback onPressedLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedLogin,
          child: const Text("Login"),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 15), // Padding tombol
          ),
        ),
        SizedBox(height: 2),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: Text("Don't have an account? Sign Up"),
        ),
      ],
    );
  }
}
